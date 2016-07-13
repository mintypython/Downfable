audio_play_sound(sndHeal,1,false);
global.hp += argument0;
if global.hp >= global.maxHP
{
    global.hp = global.maxHP;
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
