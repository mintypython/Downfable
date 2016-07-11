inst = instance_create(x + speechX,y + speechY,SpeechBubble);
inst.parent = id;
inst.wiggle = wiggle;
inst.wobble = wobble;
inst.alarm[0] = lifetime;
inst.text_speed = text_speed;
var i = 0;
for (i=0; i < argument_count; i++)
{
    inst.text[i] = argument[i];
}
