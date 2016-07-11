///Used by KeyCont

///This code is recreated from another popular Game Maker: Studio game on Steam!
///Do you know which one?
var p;
p = 0//player id

repeat(players)
{

    //KEYBOARD CONTROLS
    //0 = nothing 1 = pressed 2 = hold = 3 = release //SO ON HOLD is both 1 and 2 AND NOT HELD IS BOTH 3 and 0
    
    //up
    if keyboard_check(bind_up)
    {
        if key_up[p] = 1
            key_up[p] = 2;
        else if key_up[p] !=2
            key_up[p] = 1;
    }
    else
    {
        if key_up[p] = 3
            key_up[p] = 0;
        else if key_up[p] !=0
            key_up[p] = 3;
    }
    
    //down
    if keyboard_check(bind_down)
    {
        if key_down[p] = 1
            key_down[p] = 2;
        else if key_down[p] !=2
            key_down[p] = 1;
    }
    else
    {
        if key_down[p] = 3
            key_down[p] = 0;
        else if key_down[p] !=0
            key_down[p] = 3;
    }
    
    //left
    if keyboard_check(bind_left)
    {
        if key_left[p] = 1
            key_left[p] = 2;
        else if key_left[p] !=2
            key_left[p] = 1;
    }
    else
    {
        if key_left[p] = 3
            key_left[p] = 0;
        else if key_left[p] !=0
            key_left[p] = 3;
    }
    
    //right
    if keyboard_check(bind_right)
    {
        if key_right[p] = 1
            key_right[p] = 2;
        else if key_right[p] !=2
            key_right[p] = 1;
        }
        else
        {
        if key_right[p] = 3
            key_right[p] = 0;
        else if key_right[p] !=0
            key_right[p] = 3;
    }
    
    //primary
    if keyboard_check(bind_primary)
    {
        if key_primary[p] = 1
            key_primary[p] = 2;
        else if key_primary[p] !=2
            key_primary[p] = 1;
        }
        else
        {
        if key_primary[p] = 3
            key_primary[p] = 0;
        else if key_primary[p] !=0
            key_primary[p] = 3;
    }
    
    //secondary
    if keyboard_check(bind_secondary)
    {
        if key_secondary[p] = 1
            key_secondary[p] = 2;
        else if key_secondary[p] !=2
            key_secondary[p] = 1;
        }
        else
        {
        if key_secondary[p] = 3
            key_secondary[p] = 0;
        else if key_secondary[p] !=0
            key_secondary[p] = 3;
    }
    
    //pause
    if keyboard_check(bind_pause)
    {
        if key_pause[p] = 1
            key_pause[p] = 2;
        else if key_pause[p] !=2
            key_pause[p] = 1;
        }
        else
        {
        if key_pause[p] = 3
            key_pause[p] = 0;
        else if key_pause[p] !=0
            key_pause[p] = 3;
    }

    p++;
}
