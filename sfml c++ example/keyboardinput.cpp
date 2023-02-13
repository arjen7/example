#include<SFML/Graphics.hpp>
int main(int argc, char const *argv[])
{
    sf::RenderWindow window(sf::VideoMode(600,600),"yo");
    sf::CircleShape shape(100);
    shape.setFillColor(sf::Color::Red);
    shape.setPointCount(4);
    sf::Vector2f position(200,200);
    shape.setPosition(position);
    sf::Clock clock;
    int fps=100/12;
    sf::Time time=clock.getElapsedTime();
    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type==sf::Event::Closed)
            {
                window.close();
            }
            if (event.type==sf::Event::KeyPressed)
            {
                if (event.key.code==sf::Keyboard::Left)
                {
                    shape.setPosition(position.x-=10,position.y);
                }
                if (event.key.code==sf::Keyboard::Right)
                {
                   shape.setPosition(position.x+=10,position.y);
                }
                if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up))
                {
                    shape.setPosition(position.x,position.y-=10);
                }
                if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down))
                {
                    shape.setPosition(position.x,position.y+=10);
                }
                
            }
        }
        window.clear();
        window.draw(shape);
        window.display();
        if (time.asMilliseconds()<fps)
        {
            sf::sleep(sf::milliseconds(fps-time.asMilliseconds()));
        }
        clock.restart();
    
    }
    
    return 0;
}
