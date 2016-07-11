if argument0[0] = 0
{
    global.playable = 1;
    var inst = instance_create(0, 0, Fade);
    with inst
    {
        fadeDirection = 0;
        opacity = 1;
        fadeSpeed = argument0[1];
    }
}
else if argument0[0] = 1
{
    player_stop();
    var inst = instance_create(0, 0, Fade);
    with inst
    {
        fadeDirection = 1;
        opacity = 0;
        fadeSpeed = argument0[1];
    }
}
else if argument0[0] = 2
{
    var inst = instance_create(0,0,Fade);
    with inst
    {
        opacity = 1;
        fadeDirection = 2;
        lifetime = argument0[1];
    }
}
else if argument0[0] = 3
{
    var inst = instance_create(0,0,Fade);
    with inst
    {
        opacity = 0;
        fadeDirection = 2;
        lifetime = argument0[1];
    }
}
