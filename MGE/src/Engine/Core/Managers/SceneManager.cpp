#include "SceneManager.hpp"
#include <Core\Scene.hpp>
#include <algorithm>

SceneManager::~SceneManager()
{
	m_activeScene = nullptr;
}

Scene * SceneManager::CreateScene(const std::string & name)
{
	//Create a new scene
	std::unique_ptr<Scene> scene(new Scene(name));

	//Store a raw pointer to the scene to return
	Scene* sceneRaw = scene.get();

	//If there is currently no active scene, set the new scene as the active one
	if (GetActiveScene() == nullptr)
	{
		SetActiveScene(sceneRaw);
	}

	//Add the scene to the scenes list
	m_scenes.push_back(std::move(scene));

	//Return the new scene
	return sceneRaw;
}
#include <iostream>
void SceneManager::DestroyScene(Scene * scene)
{
	//Find the unique ptr to the scene
	const auto itr = std::find_if(m_scenes.begin(), m_scenes.end(), [&](const auto& s) {return s.get() == scene; });
	std::cout << "Scene count start: " << m_scenes.size() << '\n';
	if (itr != m_scenes.end())
	{
		//Remove the scene from the scenes list, thus destroying it
		m_scenes.erase(std::remove(m_scenes.begin(), m_scenes.end(), *itr));

		if (m_activeScene == scene)
		{
			SetActiveScene(nullptr);
		}
	}
	std::cout << "Scene count end: " << m_scenes.size() << '\n';
}

void SceneManager::DestroyActiveScene()
{
	DestroyScene(m_activeScene);
}

void SceneManager::SetActiveScene(Scene * scene)
{
	m_activeScene = scene;
}

Scene * SceneManager::GetActiveScene()
{
	return m_activeScene;
}

Scene * SceneManager::GetSceneByName(const std::string & name)
{
	//Try to find the scene that matches the name
	const auto foundSceneItr = std::find_if(m_scenes.begin(), m_scenes.end(), [&](const auto& scene) { return scene->GetName() == name; });

	//If the scene was found, return it
	if (foundSceneItr != m_scenes.end())
	{
		return (*foundSceneItr).get();
	}
	else
	{
		//Scene wasn't found, return null
		return nullptr;
	}
}

Scene * SceneManager::GetSceneByIndex(int index)
{
	return m_scenes[index].get();
}

int SceneManager::GetSceneCount()
{
	return m_scenes.size();
}
