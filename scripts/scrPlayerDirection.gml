/*
    This chunk of code determine's the direction Frisk is facing.
    
    Looks needlessly complicated, right?  That's because it has to remember which
    direction Frisk originally started walking, so you preserve that direction until
    you stop or hit a wall.  Thus you can walk up and hit left/right without changing
    direction, or walk right and hit up/down without changing direction.
    
    Some more code is added to intentionally override the direction of certain keys.
    Left overrides right, and up overrides down.
*/
if dirStore = false
{
    if KeyCont.key_right[0] = 1 || KeyCont.key_right[0] = 2
    {
        dir = 0;
        dirStore = true;
    }
    if KeyCont.key_left[0] = 1 || KeyCont.key_left[0] = 2
    {
        dir = 180;
        dirStore = true;
    }
    if KeyCont.key_down[0] = 1 || KeyCont.key_down[0] = 2
    {
        dir = 270;
        dirStore = true;
    }
    if KeyCont.key_up[0] = 1 || KeyCont.key_up[0] = 2
    {
        dir = 90;
        dirStore = true;
    }
}
else
{
    if dir = 0
    {
        if KeyCont.key_right[0] = 0
        {
            dirStore = false;
        }
        if KeyCont.key_left[0] = 1 || KeyCont.key_left[0] = 2
        {
            dir = 180;
        }
        if abs(xSPD) = 0 && abs(ySPD) != 0
        {
            if KeyCont.key_up[0] = 1 || KeyCont.key_up[0] = 2
            {
                dir = 90;
            }
            if KeyCont.key_down[0] = 1 || KeyCont.key_down[0] = 2
            {
                dir = 270;
            }
        }
    } else if dir = 90
    {
        if KeyCont.key_up[0] = 0
        {
            dirStore = false;
        }
        if abs(ySPD) = 0 && abs(xSPD) != 0
        {
            if KeyCont.key_right[0] = 1 || KeyCont.key_right[0] = 2
            {
                dir = 0;
            }
            if KeyCont.key_left[0] = 1 || KeyCont.key_left[0] = 2
            {
                dir = 180;
            }
        }
    } else if dir = 180
    {
        if KeyCont.key_left[0] = 0
        {
            dirStore = false;
        }
        if abs(xSPD) = 0 && abs(ySPD) != 0
        {
            if KeyCont.key_up[0] = 1 || KeyCont.key_up[0] = 2
            {
                dir = 90;
            }
            if KeyCont.key_down[0] = 1 || KeyCont.key_down[0] = 2
            {
                dir = 270;
            }
        }
    } else if dir = 270
    {
        if KeyCont.key_down[0] = 0
        {
            dirStore = false;
        }
        if KeyCont.key_up[0] = 1 || KeyCont.key_up[0] = 2
        {
            dir = 90;
        }
        if abs(ySPD) = 0 && abs(xSPD) != 0
        {
            if KeyCont.key_right[0] = 1 || KeyCont.key_right[0] = 2
            {
                dir = 0;
            }
            if KeyCont.key_left[0] = 1 || KeyCont.key_left[0] = 2
            {
                dir = 180;
            }
        }
    }
}
