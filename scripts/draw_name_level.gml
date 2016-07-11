var xPos = argument0;
var yPos = argument1;
var length = argument2;

draw_set_font(mars);
draw_set_color(c_white);
draw_text(xPos, yPos, string(name));
draw_text(xPos + length, yPos, "LV "+string(level));
