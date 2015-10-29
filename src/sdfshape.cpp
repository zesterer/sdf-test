#include "sdfshape.h"

float SDFShape::getDistance(glm::vec3 pos)
{
	return 100.0f;
}

glm::vec3 SDFShape::getNormal(glm::vec3 pos)
{
	glm::vec3 norm = glm::vec3(
	    this->getDistance(pos + glm::vec3(NORMAL_RESOLUTION, 0.0f, 0.0f)) - this->getDistance(pos - glm::vec3(NORMAL_RESOLUTION, 0.0f, 0.0f)),
	    this->getDistance(pos + glm::vec3(0.0f, NORMAL_RESOLUTION, 0.0f)) - this->getDistance(pos - glm::vec3(0.0f, NORMAL_RESOLUTION, 0.0f)),
	    this->getDistance(pos + glm::vec3(0.0f, 0.0f, NORMAL_RESOLUTION)) - this->getDistance(pos - glm::vec3(0.0f, 0.0f, NORMAL_RESOLUTION)));
	return glm::normalize(norm);
}

glm::vec3 SDFShape::getColour(glm::vec3 pos)
{
	return glm::vec3(1.0, 1.0, 1.0);
}

glm::vec3 SDFShape::getRelative(glm::vec3 pos)
{
	pos -= this->position;
	pos = this->orientation_inverse * pos;

	return pos;
}

void SDFShape::update()
{
	this->orientation_inverse = glm::inverse(this->orientation);
}



float Sphere::getDistance(glm::vec3 pos)
{
	pos = this->getRelative(pos);

	return glm::length(pos) - this->radius;
}

glm::vec3 Sphere::getColour(glm::vec3 pos)
{
	return this->colour;
}



float Floor::getDistance(glm::vec3 pos)
{
	pos = this->getRelative(pos);

	return pos.z;
}

glm::vec3 Floor::getColour(glm::vec3 pos)
{
	pos = this->getRelative(pos);

	pos = glm::mod(pos, 2.0f);

	if ((pos.x > 1.0f && pos.y < 1.0f) || (pos.x < 1.0f && pos.y > 1.0f))
		return this->colour * 1.0f;
	else
		return this->colour * 0.4f;
}



float Torus::getDistance(glm::vec3 pos)
{
	pos = this->getRelative(pos);

	glm::vec2 q = glm::vec2(glm::length(glm::vec2(pos.x, pos.z)) - this->properties.x, pos.y);
	return glm::length(q) - this->properties.y;
}

glm::vec3 Torus::getColour(glm::vec3 pos)
{
	return this->colour;
}



float TorusSquare::getDistance(glm::vec3 pos)
{
	pos = this->getRelative(pos);

	float a = glm::pow(glm::pow(pos.x, 6.0) + glm::pow(pos.z, 6.0), 1.0f / 6.0f);

	glm::vec2 q = glm::vec2(a - this->properties.x, pos.y);

	float b = glm::pow(glm::pow(q.x, 6.0) + glm::pow(q.y, 6.0), 1.0f / 6.0f);

	return b - this->properties.y;
}
