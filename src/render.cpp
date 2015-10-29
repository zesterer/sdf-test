#include "render.h"

#include "string"

#define FRAGMENT_SIZE 8

void Render::put_pixel(SDL_Surface* screen, int x, int y, Pixel p)
{
	Uint32* p_screen = (Uint32*)screen->pixels;
	p_screen += y*screen->w+x;
	*p_screen = SDL_MapRGBA(screen->format, p.r, p.g, p.b, p.a);
}

void Render::renderTo(Window* window)
{
	this->updateMatrix();

	SDL_LockSurface(window->screen_surface);

	for (int x = 0; x < 640; x ++)
	{
		printf("Rendering column %d.\n", x);
		for (int y = 0; y < 480; y ++)
		{
			glm::vec3 pos = glm::vec3(1.0f, x / 640.0f, y / 320.0f) * 2.0f - 1.0f;

			glm::vec3 ray_vec = glm::vec3(glm::vec4(pos, 0.0f) * this->perspective);

			glm::vec3 colour = this->marchRay(glm::normalize(ray_vec), this->camera_pos, 3);

			colour /= colour + 1.0f;

			glm::ivec3 rgb = colour * 255.0f;

			this->put_pixel(window->screen_surface, x, y, {rgb.r, rgb.g, rgb.b, 255});
		}
	}

	SDL_UnlockSurface(window->screen_surface);
}


glm::vec3 Render::marchRay(glm::vec3 ray_vec, glm::vec3 ray_pos, int reflect, bool shadow)
{
	//Decrement the reflection count
	reflect --;

	float ray_length = 0.0f;

	while(ray_length < MAX_MARCH)
	{
		float min_dist = MAX_MARCH;

		for (SDFShape* shape : this->shapes)
		{
			//float accelerator = SHAPE_RESOLUTION / glm::abs(shape->getDistance(ray_pos) - shape->getDistance(ray_pos + ray_vec * SHAPE_RESOLUTION));

			//printf("Accelerator is %f.", accelerator);

			min_dist = glm::max(SHAPE_RESOLUTION * 0.1f, glm::min(min_dist, shape->getDistance(ray_pos)));

			if (min_dist < SHAPE_RESOLUTION && ray_length > 0.04f)
			{
				if (shadow)
					return glm::vec3(0.0, 0.0, 0.0);

				float light = this->getLightOf(shape, ray_pos, ray_vec);

				glm::vec3 shape_col = shape->getColour(ray_pos);

				if (reflect > 0 && shape->reflection > 0.0f)
				{
					glm::vec3 reflection = this->marchRay(glm::reflect(ray_vec, shape->getNormal(ray_pos)), ray_pos, reflect);

					return glm::mix(glm::vec3(light), reflection, shape->reflection) * shape_col;
				}

				return light * shape_col;
			}
		}

		ray_length += min_dist;
		ray_pos += min_dist * ray_vec;
	}

	return glm::vec3(1.0, 1.0, 1.1);
}

float Render::getLightOf(SDFShape* shape, glm::vec3 ray_pos, glm::vec3 ray_vec)
{
	glm::vec3 light_vector = -this->light_vector;

	float beam = this->marchRay(light_vector, ray_pos, 1, true).x;

	float specular = glm::pow(0.005f + glm::max(0.0f, glm::dot(light_vector, glm::reflect(ray_vec, shape->getNormal(ray_pos)))), 30.0f) * 16.0f;

	return glm::max(0.15f, beam * glm::max(0.0f, glm::dot(light_vector, shape->getNormal(ray_pos))) + beam * specular);
}

void Render::updateMatrix()
{
	this->perspective = glm::mat4(1.0);

	this->perspective = glm::toMat4(glm::quat(glm::vec3(-0.05, -0.2, 0.3))) * this->perspective;

	this->perspective = glm::perspective(0.9f, 1.0f, 0.001f, 100.0f) * this->perspective;

	this->perspective_inverse = glm::inverse(this->perspective);
}
