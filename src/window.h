#ifndef WINDOW_H
#define WINDOW_H

#include "SDL.h"

struct Window
{
	SDL_Window* window = NULL;
	SDL_Surface* screen_surface = NULL;

	void create();
	void blank();
	void update();
};

#endif
