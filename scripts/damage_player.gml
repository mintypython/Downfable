if PlayerHeart.state = 0
{
    audio_play_sound(sndPlayerHurt,0,false);
    if argument0 - global.def < 1
    {
        global.hp -= 1;
    }
    else
    {
        global.hp -= round(argument0 - global.def);
    }
    if global.hp < 0
    {
        global.hp = 0;
    }
    with PlayerHeart
    {
        state = 1
        bleeps = 16;
        alarm[0] = 1;
    }
}
