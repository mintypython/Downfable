audio_play_sound(sndHeal,1,false);
PlayerMenuCont.hp += argument0;
if PlayerMenuCont.hp >= PlayerMenuCont.maxHP
{
    PlayerMenuCont.hp = PlayerMenuCont.maxHP;
    if instance_exists(TextBox)
    {
        inst.text[0] += "#HP maxed out!";
    }
    exit;
}
if instance_exists(TextBox)
{
    inst.text[0] += "#HP healed by "+string(argument0)+".";
}
