#include <Behaviours\PostProcessors\PostProcessor.hpp>
#include <Renderers\PostProcessRenderer.hpp>
#include <Utils\MeshFactory.hpp>

PostProcessor::PostProcessor(Shader& shader) : m_shader(shader), m_quad(MeshFactory::Instance().CreateQuad())
{ 
	PostProcessRenderer::Instance().AddPostProcessor(this);
}

PostProcessor::~PostProcessor() 
{ 
	PostProcessRenderer::Instance().RemovePostProcessor(this);
}

void PostProcessor::DrawToTexture()
{
	m_quad->StreamToOpenGL
	(
		m_shader.GetAttribute("vertex"),
		-1,
		m_shader.GetAttribute("uv"),
		-1
	);
}