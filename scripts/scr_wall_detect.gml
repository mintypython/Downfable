//This chunk of code lets Frisk bump into walls.

/*
    argument0 = x or y velocity - 0 = x, 1 = y
    argument1 = what to hit
*/

var maxarg;
var i = 0;

if argument0 = 0
{
    x = round(x);
    maxarg = abs(xSPD);
    if (place_meeting(x +xSPD, y, argument1))
    {
        while (!place_meeting(x+sign(xSPD), y, argument1) && i < maxarg)
        {
            x += sign(xSPD);
            i++;
        }
        xSPD = 0;
    }
}
else if argument0 = 1
{
    y = round(y);
    maxarg = abs(ySPD);
    if (place_meeting(x, y + ySPD, argument1))
    {
        while (!place_meeting(x, y + sign(ySPD), argument1) && i < maxarg)
        {
            y += sign(ySPD);
            i++;
        }
        ySPD = 0;
    }
}
else
{
}
