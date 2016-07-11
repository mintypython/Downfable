if KeyCont.key_right[p] = 1 || KeyCont.key_right[p] = 2
{
    xSPD = spd;
}
if KeyCont.key_down[p] = 1 || KeyCont.key_down[p] = 2
{
    ySPD = spd;
}
if KeyCont.key_up[p] = 1 || KeyCont.key_up[p] = 2
{
    ySPD = -spd;
}
if KeyCont.key_left[p] = 1 || KeyCont.key_left[p] = 2
{
    xSPD = -spd;
}

if KeyCont.key_primary[p] = 1
{
    var checkX = x + cos(degtorad(dir)) * interactRange;
    var checkY = y - sin(degtorad(dir)) * interactRange;
    if place_meeting(checkX, checkY, Interactible)
    {
        with (instance_place(checkX, checkY, Interactible))
        {
            event_user(0);
        }
    }
}
