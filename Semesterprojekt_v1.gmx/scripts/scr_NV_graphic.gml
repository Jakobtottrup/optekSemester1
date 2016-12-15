//NV graphics

//origin of which the graphics are drawed from
o_x = 170;
o_y = 800;


offset_x = obj_player_seb.direction*(360/270);
offset_x_last = offset_x;

if(offset_x <= offset_x_last) {
    offset_x++;
}


draw_circle(o_x+offset_x, o_y-20, 5, true);

//horizontal line
draw_line_width(o_x-20, o_y-1, o_x+380, o_y-1, 3);

//vertical lines
draw_line_width(o_x, o_y-10, o_x, o_y+5, 2);
draw_line_width(o_x+40, o_y-10, o_x+40, o_y+5, 2);
draw_line_width(o_x+80, o_y-10, o_x+80, o_y+5, 2);
draw_line_width(o_x+120, o_y-10, o_x+120, o_y+5, 2);
draw_line_width(o_x+160, o_y-10, o_x+160, o_y+5, 2);
draw_line_width(o_x+200, o_y-10, o_x+200, o_y+5, 2);
draw_line_width(o_x+240, o_y-10, o_x+240, o_y+5, 2);
draw_line_width(o_x+280, o_y-10, o_x+280, o_y+5, 2);
draw_line_width(o_x+320, o_y-10, o_x+320, o_y+5, 2);
draw_line_width(o_x+360, o_y-10, o_x+360, o_y+5, 2);
