///Create a standard question box
var inst = instance_create(30,170,QuestionBox);
inst.relative = 0;
inst.draw_box = true;
inst.controllable = 1;
inst.font = bit_overworld;
inst.text[0] = "* "+argument0[0];
inst.text[1] = argument0[1];
inst.text[2] = argument0[2];
