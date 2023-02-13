#include<SFML/Graphics.hpp>
int main(int argc, char const *argv[])
{
    sf::RenderWindow test2(sf::VideoMode(600,600),"test2");
    sf::CircleShape circle(100);
    circle.setFillColor(sf::Color::Red);
    circle.setPointCount(200);
    sf::Clock clock;
    sf::Vector2f position(-200,0);
    int x=0,y=0;
    int fps=100%6;
    while (test2.isOpen())
    {
        sf::Time time=clock.getElapsedTime();
        sf::Event event;
        while (test2.pollEvent(event))
        {
            if (event.type==sf::Event::Closed)
            {
                test2.close();
            }
            
        }
        circle.setPosition(position);
        position.x=((x+=1)%800-200);
        test2.clear();
        test2.draw(circle);
        test2.display();
        if (time.asMilliseconds()<fps)
        {
            sf::sleep(sf::milliseconds(fps-time.asMilliseconds()));
        }
        clock.restart();
    }
    
    return 0;
}
