//Condensed script to quickly make text boxes.
/*
    You can straight up copy this code in an event for more control.
    relative = Will this box move with the camera?
    draw_box = Does this text box have a box around it?
    controllable = Can you close it with Z?  Can you skip it with X?
    wobble = Does the text wobble slightly over time?
    Clean = Will this text box call the next event when it is destroyed?
    font = What font does this text box initially use? (Can be overridden with font_list)
    typeSnd = what sound does this text box use?
*/
var inst = instance_create(30,170,TextBox);
inst.relative = 0;
inst.draw_box = true;
inst.controllable = 1;
inst.wobble = 0;
inst.clean = 1;
inst.font = bit_overworld;
inst.typeSnd = sound;
var i = 0;
for (i=0; i < argument_count; i++)
{
    inst.text[i] = "* "+argument[i];
}
