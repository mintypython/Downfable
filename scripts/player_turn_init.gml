var enemy_i = instance_find(Enemy, irandom(instance_number(Enemy) - 1));
if global.lastTarget != GlobalCont.id
{
    enemy_i = global.lastTarget;
}

with enemy_i
{
    event_user(2);
}
var textInstance = instance_create(50, 270, TextBox);
    with textInstance
    {
        text[0] = "* "+string(other.mainText);
    }
