var i = argument0;
nav = 0;

if i = 0
{
    nav[0,0] = 1;
    nav[0,1] = 1;
    nav[0,2] = 1;
    nav[0,3] = 1;
}
else if i = 1
{
    load_enemy_nav();
}
else if i = 2
{
    load_enemy_nav();
}
else if i = 3
{
    load_item_nav();
}
else if i = 4
{
    nav[0,0] = 1;
    nav[1,0] = 1;
}
else if i = 5
{
    load_act_nav();
}
