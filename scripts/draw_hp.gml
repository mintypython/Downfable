var xPos = argument0;
var yPos = argument1;
var length = argument2;

draw_sprite_ext(sprBar, 0, xPos, yPos, length, 1, 0, c_red, draw_get_alpha());
draw_sprite_ext(sprBar, 0, xPos, yPos, hp/maxHP * length, 1, 0, c_yellow, draw_get_alpha());

draw_set_font(bit_small);
draw_text(xPos - string_width("HP "), yPos, "HP");
draw_set_font(mars);
draw_set_color(c_white);
draw_text(xPos + length + 14, yPos, string(hp)+" / "+string(maxHP));
