inst = instance_create(x + speechX,y + speechY,SpeechBubble);
inst.text[0] = argument[0];
inst.parent = id;
inst.alarm[0] = lifetime;
