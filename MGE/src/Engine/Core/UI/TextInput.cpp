#include "TextInput.h"


void TextInput::createInputBox(sf::Font inputFont, sf::Sprite inputBox)
{
	inputBox.setPosition(100, 450);
	inputText.setString("");
	inputText.setFont(inputFont);
	inputText.setCharacterSize(14);
	inputText.setFillColor(sf::Color::White);
}


void TextInput::Draw()
{
	window->draw(inputText);
}