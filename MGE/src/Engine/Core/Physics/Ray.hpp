#pragma once
#include <Utils\glm.hpp>

class Ray final
{
public:
	Ray(const glm::vec3& origin, const glm::vec3& direction);

	glm::vec3 GetOrigin() const;
	glm::vec3 GetDirection() const;

	glm::vec3 GetPoint(float distanceAlong) const;
	glm::vec3 GetPointClosestTo(const glm::vec3& point) const;
private:
	glm::vec3 m_origin;
	glm::vec3 m_direction;
};