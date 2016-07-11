///Animate Frisk!

//Each direction has a different sprite associated, to simplify walk cycle logic.
if abs(xSPD) + abs(ySPD) = 0
{
    sprite_index = sprFrisk;
    image_speed = 0;
    if dir = 0
    {
        image_index = 6;
    }
    else if dir = 90
    {
        image_index = 3;
    }
    else if dir = 180
    {
        image_index = 8;
    }
    else if dir = 270
    {
        image_index = 0;
    }
}
else
{
    image_speed = 0.2;
    if dir = 0
    {
        sprite_index = sprFriskWalkRight;
    }
    else if dir = 90
    {
        sprite_index = sprFriskWalkUp;
    }
    else if dir = 180
    {
        sprite_index = sprFriskWalkLeft;
    }
    else if dir = 270
    {
        sprite_index = sprFriskWalkDown;
    }
}
