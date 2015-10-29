#ifndef RENDER_H
#define RENDER_H

#include "vector"

#include "glm/glm.hpp"
#include "glm/vec3.hpp"
#include "glm/gtx/quaternion.hpp"
#include "glm/mat4x4.hpp"
#include "glm/gtc/matrix_transform.hpp"

#include "window.h"
#include "sdfshape.h"

#define MAX_MARCH 50.0f

struct Pixel
{
	unsigned char r, g, b, a;
};

struct Render
{
	std::vector<SDFShape*> shapes;

	glm::mat4 perspective;
	glm::mat4 perspective_inverse;

	glm::vec3 camera_pos = glm::vec3(-0.4, 0.4, 0.2);

	glm::vec3 light_vector = glm::normalize(glm::vec3(-1.5, 1.3, -1.8));

	void renderTo(Window* window);
	void put_pixel(SDL_Surface* screen, int x, int y, Pixel p);
	glm::vec3 marchRay(glm::vec3 ray_vec, glm::vec3 ray_pos, int reflect, bool shadow = false);
	float getLightOf(SDFShape* shape, glm::vec3 ray_pos, glm::vec3 ray_vec);
	void updateMatrix();
};

#endif
