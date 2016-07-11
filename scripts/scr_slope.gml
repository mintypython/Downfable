/*
    This chunk of code allows Frisk to slide up and down sloped surfaces.
  
    It's slightly wonky, sometimes the player "skips" forward a little when leaving the surface.
    Will be reworked.  
    
*/
if argument0 = 0
{
    if place_meeting(x + xSPD, y, argument1)
    {
        var maxi = abs(xSPD/2);
        var i = 0;
        var oldY = y;
        while(place_meeting(x+xSPD, y, argument1) && i < maxi)
        {
            y+=1;
            i++;
        }
        if (place_meeting(x+xSPD, y, argument1))
        {
            y = oldY;
            i = 0;
            while(place_meeting(x+xSPD, y, argument1) && i < maxi)
            {
                y-=1;
                i++;
            }
            if (place_meeting(x+xSPD, y, argument1))
            {
                y = oldY;
            }
        }
        
    }
}
else
{
    if place_meeting(x, y+ySPD, argument1)
    {
        var maxi = abs(ySPD/2);
        var i = 0;
        var oldX = x;
        while(place_meeting(x, y+ySPD, argument1) && i < maxi)
        {
            x+=1;
            i++;
        }
        if (place_meeting(x, y+ySPD, argument1))
        {
            x = oldX;
            i = 0;
            while(place_meeting(x, y+ySPD, argument1) && i < maxi)
            {
                x-=1;
                i++;
            }
            if (place_meeting(x, y+ySPD, argument1))
            {
                x = oldX;
            }
        }    
    }
}
