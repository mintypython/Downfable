if PlayerHeart.state = 0
{
    audio_play_sound(sndPlayerHurt,0,false);
    if argument0 - PlayerMenuCont.def < 1
    {
        PlayerMenuCont.hp -= 1;
    }
    else
    {
        PlayerMenuCont.hp -= round(argument0 - PlayerMenuCont.def);
    }
    if PlayerMenuCont.hp < 0
    {
        PlayerMenuCont.hp = 0;
    }
    with PlayerHeart
    {
        state = 1
        bleeps = 16;
        alarm[0] = 1;
    }
}
