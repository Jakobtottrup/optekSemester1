//NV graphics

//origin of which the graphics are drawed from
o_x = 375;
o_y = 720;


//offset_x = -180;
for(offset_x = -180; offset_x < 180; offset_x += 3)


//offset_x = round(random_range(-195, 195));
//last_x = offset_x + 1;



draw_circle(o_x+offset_x, o_y-15, 5, true);

//horizontal line
draw_line_width(o_x-200, o_y+1, o_x+200, o_y+1, 3);

//vertical lines
draw_line_width(o_x-180, o_y-10, o_x-180, o_y+5, 2);
draw_line_width(o_x-140, o_y-10, o_x-140, o_y+5, 2);
draw_line_width(o_x-100, o_y-10, o_x-100, o_y+5, 2);
draw_line_width(o_x-60, o_y-10, o_x-60, o_y+5, 2);
draw_line_width(o_x-20, o_y-10, o_x-20, o_y+5, 2);
draw_line_width(o_x+20, o_y-10, o_x+20, o_y+5, 2);
draw_line_width(o_x+60, o_y-10, o_x+60, o_y+5, 2);
draw_line_width(o_x+100, o_y-10, o_x+100, o_y+5, 2);
draw_line_width(o_x+140, o_y-10, o_x+140, o_y+5, 2);
draw_line_width(o_x+180, o_y-10, o_x+180, o_y+5, 2);
