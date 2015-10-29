#include "window.h"
#include "cstdio"

void Window::create()
{
	this->window = SDL_CreateWindow("SDF Test", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 640, 480, SDL_WINDOW_SHOWN);

	this->screen_surface = SDL_GetWindowSurface(window);
}

void Window::blank()
{
	SDL_FillRect(screen_surface, NULL, SDL_MapRGB(screen_surface->format, 0xFF, 0xFF, 0xFF));
}

void Window::update()
{
	SDL_UpdateWindowSurface(window);
}
