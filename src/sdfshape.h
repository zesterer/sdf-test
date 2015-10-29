#ifndef SDFSHAPE_H
#define SDFSHAPE_H

#include "glm/glm.hpp"
#include "glm/vec3.hpp"
#include "glm/mat4x4.hpp"
#include "glm/gtx/quaternion.hpp"

#define SHAPE_RESOLUTION 0.001f
#define NORMAL_RESOLUTION 0.001f

struct SDFShape
{
	float reflection = 0.3f;

	glm::vec3 position = glm::vec3(0.0, 0.0, 0.0);
	glm::quat orientation = glm::quat(glm::vec3(0.0, 0.0, 0.0));
	glm::quat orientation_inverse;

	void update();
	glm::vec3 getRelative(glm::vec3 pos);

	virtual float getDistance(glm::vec3 pos);
	virtual glm::vec3 getNormal(glm::vec3 pos);
	virtual glm::vec3 getColour(glm::vec3 pos);
};

struct Sphere : public SDFShape
{
	float radius = 1.0;
	glm::vec3 colour = glm::vec3(1.0, 0.1, 0.1);

	virtual float getDistance(glm::vec3 pos) override;
	virtual glm::vec3 getColour(glm::vec3 pos) override;
};

struct Floor : public SDFShape
{
	float height = 0.0;
	glm::vec3 colour = glm::vec3(0.1, 0.1, 1.0);

	virtual float getDistance(glm::vec3 pos) override;
	virtual glm::vec3 getColour(glm::vec3 pos) override;
};

struct Torus : public SDFShape
{
	glm::vec2 properties = glm::vec2(1.0, 2.0);
	glm::vec3 colour = glm::vec3(0.1, 0.1, 1.0);

	virtual float getDistance(glm::vec3 pos) override;
	virtual glm::vec3 getColour(glm::vec3 pos) override;
};

struct TorusSquare : public Torus
{
	virtual float getDistance(glm::vec3 pos) override;
};

#endif
