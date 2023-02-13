#include<SFML/Graphics.hpp>
int main(int argc, char const *argv[])
{
    sf::RenderWindow test1(sf::VideoMode(600,600),"test1");
    sf::CircleShape circle(200);
    sf::RectangleShape rectangle(sf::Vector2f(100,50));
    sf::ConvexShape shapeT;
    shapeT.setPointCount(8);
    shapeT.setPoint(0,sf::Vector2f(0,0));
    shapeT.setPoint(1,sf::Vector2f(0,20));
    shapeT.setPoint(2,sf::Vector2f(20,20));
    shapeT.setPoint(3,sf::Vector2f(20,40));
    shapeT.setPoint(4,sf::Vector2f(40,40));
    shapeT.setPoint(5,sf::Vector2f(40,20));
    shapeT.setPoint(6,sf::Vector2f(60,20));
    shapeT.setPoint(7,sf::Vector2f(60,0));
    shapeT.setFillColor(sf::Color::Yellow);
    shapeT.setPosition(sf::Vector2f(200,60));
    circle.setFillColor(sf::Color::Blue);
    circle.setPointCount(60);
    circle.setOutlineThickness(2.0f);
    circle.setOutlineColor(sf::Color::Red);
    rectangle.setPosition(350,500);
    rectangle.setFillColor(sf::Color::Magenta);


    while (test1.isOpen())
    {
        sf::Event event;
        while (test1.pollEvent(event))
        {
            if (event.type==sf::Event::Closed)
            {
                test1.close();
            }
        }
        test1.clear();
        test1.draw(circle);
        test1.draw(rectangle);
        test1.draw(shapeT);
        test1.display();
        
        
    }
    
    return 0;
}
