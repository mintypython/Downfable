if KeyCont.key_primary[p] = 1
{
    if complete = 1
    {
        if page = max_page
        {
            instance_destroy();
        }
        else
        {
            next_page();
            event_user(0);
        }
    }
    controlCooldown = 1;
}

if KeyCont.key_secondary[p] = 1 && complete = 0
{
    instant = 1
    event_user(0);
    instant = 0;
    audio_stop_sound(typeSnd);
    /*repeat (max_i - i)
    {
        event_user(0);
        audio_stop_sound(typeSnd);
    }*/
    controlCooldown = 1;
}
