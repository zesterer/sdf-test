#include "stdio.h"
#include "time.h"

#include "window.h"
#include "render.h"

int main(int argc, char* argv[])
{
	bool quit = false;
	SDL_Event e;

	Window window;
	Render render;

	Sphere* sphere0 = new Sphere();
	sphere0->position = glm::vec3(2.0, -0.1, -0.2);
	sphere0->colour = glm::vec3(1.0, 0.2, 0.2);
	sphere0->radius = 0.5;

	sphere0->update();
	render.shapes.push_back(sphere0);

	Sphere* sphere1 = new Sphere();
	sphere1->position = glm::vec3(0.8, -0.4, 0.0);
	sphere1->colour = glm::vec3(1.0, 1.0, 0.2);
	sphere1->reflection = 0.1f;
	sphere1->radius = 0.2;

	sphere1->update();
	render.shapes.push_back(sphere1);

	Sphere* sphere2 = new Sphere();
	sphere2->position = glm::vec3(0.9, 0.4, 0.1);
	sphere2->colour = glm::vec3(0.2, 1.0, 0.2);
	sphere2->reflection = 0.02f;
	sphere2->radius = 0.1;

	sphere2->update();
	render.shapes.push_back(sphere2);

	Sphere* sphere3 = new Sphere();
	sphere3->position = glm::vec3(4.5, -2.3, 0.5);
	sphere3->colour = glm::vec3(1.0, 1.0, 1.0);
	sphere3->reflection = 0.9f;
	sphere3->radius = 0.7;

	sphere3->update();
	render.shapes.push_back(sphere3);

	Floor* floor0 = new Floor();
	floor0->position.z = -0.5;
	floor0->reflection = 0.02f;
	floor0->colour = glm::vec3(2.0, 2.0, 3.0);
	floor0->orientation = glm::quat(glm::vec3(0.0, 0.0, 0.0));

	floor0->update();
	render.shapes.push_back(floor0);

	TorusSquare* torus0 = new TorusSquare();
	torus0->position = glm::vec3(1.1, 0.5, -0.3);
	torus0->colour = glm::vec3(0.2, 0.2, 1.2);
	torus0->properties = glm::vec2(0.13, 0.05);
	torus0->orientation = glm::quat(glm::vec3(0.0, 0.0, -1.0));

	torus0->update();
	render.shapes.push_back(torus0);

	SDL_Init(SDL_INIT_VIDEO);

	window.create();

	clock_t start = clock();

	render.renderTo(&window);

	printf("Rendered in %.2fs.\n", (double)(clock() - start) / CLOCKS_PER_SEC);

	while (!quit)
	{
		//window.blank();

		//Handle events on queue
		while(SDL_PollEvent(&e) != 0)
		{
			//User requests quit
			if(e.type == SDL_QUIT)
			{
				quit = true;
			}
		}

		window.update();

		SDL_Delay(20);
	}

	return 0;
}
