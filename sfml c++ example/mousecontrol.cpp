#include<SFML/Graphics.hpp>
int main(int argc, char const *argv[])
{
    sf::RenderWindow window(sf::VideoMode(600,600),"yo");
    sf::CircleShape circle(100);
    circle.setPointCount(15);
    circle.setFillColor(sf::Color::Red);
    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type==sf::Event::Closed)
            {
                window.close();
            }
            if (event.type==sf::Event::MouseButtonPressed)
            {
                if (event.mouseButton.button==sf::Mouse::Left)
                {
                    circle.setFillColor(sf::Color (rand()));
                }
                if (event.mouseButton.button==sf::Mouse::Right)
                {
                    circle.setPosition(sf::Mouse::getPosition(window).x-100,sf::Mouse::getPosition(window).y-100);
                }
                
            }
            if (event.type==sf::Event::MouseMoved && sf::Mouse::isButtonPressed(sf::Mouse::Right))
            {
                    circle.setPosition(sf::Mouse::getPosition(window).x-100,sf::Mouse::getPosition(window).y-100);
            }
            if(event.type==sf::Event::MouseWheelScrolled)
            {
                if (event.mouseWheelScroll.wheel==sf::Mouse::VerticalWheel)
                {
                    circle.setPointCount(circle.getPointCount()+1);
                    if (circle.getPointCount()==36)
                    {
                        circle.setPointCount(1);
                    }
                    
                }
            }
        }
        window.clear();
        window.draw(circle);
        window.display();
    }
    
    return 0;
}
