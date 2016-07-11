draw_set_color(c_white);
var thickness = argument4;
var x1 = argument0;
var x2 = argument2;
var y1 = argument1;
var y2 = argument3;
/*
draw_line_width(x1-thickness/2, y1, x2+thickness/2, y1, thickness);
draw_line_width(x2, y1, x2, y2, thickness);
draw_line_width(x2+thickness/2, y2, x1-thickness/2, y2, thickness);
draw_line_width(x1, y2, x1, y1, thickness);
*/
draw_sprite_ext(sprBorderLine, 0, x1, y1, (x2 - x1), thickness, 0, c_white, image_alpha);
draw_sprite_ext(sprBorderLine, 0, x2, y1, (y2 - y1), thickness, 270, c_white, image_alpha);
draw_sprite_ext(sprBorderLine, 0, x2, y2, (x2 - x1), thickness, 180, c_white, image_alpha);
draw_sprite_ext(sprBorderLine, 0, x1, y2, (y2 - y1), thickness, 90, c_white, image_alpha);

draw_sprite_ext(sprBorderLine, 0, x2, y1, thickness, thickness, 0, c_white, image_alpha);
draw_sprite_ext(sprBorderLine, 0, x1, y1, thickness, thickness, 90, c_white, image_alpha);
draw_sprite_ext(sprBorderLine, 0, x1, y2, thickness, thickness, 180, c_white, image_alpha);
draw_sprite_ext(sprBorderLine, 0, x2, y2, thickness, thickness, 270, c_white, image_alpha);
