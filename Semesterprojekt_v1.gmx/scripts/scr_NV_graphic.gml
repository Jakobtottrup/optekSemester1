//NV graphics overlay
draw_set_color(c_green);

//origin of which the graphics are drawed from
global.o_x = 50;
global.o_y = 850;


//create cursors
if !instance_exists(obj_NV_cursor_vert) && !instance_exists(obj_NV_cursor_horiz) {
    instance_create(global.o_x, global.o_y-random_offset, obj_NV_cursor_vert);
    instance_create(global.o_x+random_offset, global.o_y, obj_NV_cursor_horiz);
}


//vertical lines
draw_line_width(global.o_x,        global.o_y-100,    global.o_x,        global.o_y-500, 3); //long line

draw_line_width(global.o_x-10,     global.o_y-120,    global.o_x+10,     global.o_y-120, 2);
draw_line_width(global.o_x-10,     global.o_y-160,    global.o_x+10,     global.o_y-160, 2);
draw_line_width(global.o_x-10,     global.o_y-200,    global.o_x+10,     global.o_y-200, 2);
draw_line_width(global.o_x-10,     global.o_y-240,    global.o_x+10,     global.o_y-240, 2);
draw_line_width(global.o_x-10,     global.o_y-280,    global.o_x+10,     global.o_y-280, 2);
draw_line_width(global.o_x-10,     global.o_y-320,    global.o_x+10,     global.o_y-320, 2);
draw_line_width(global.o_x-10,     global.o_y-360,    global.o_x+10,     global.o_y-360, 2);
draw_line_width(global.o_x-10,     global.o_y-400,    global.o_x+10,     global.o_y-400, 2);
draw_line_width(global.o_x-10,     global.o_y-440,    global.o_x+10,     global.o_y-440, 2);
draw_line_width(global.o_x-10,     global.o_y-480,    global.o_x+10,     global.o_y-480, 2);


//horizontal lines
draw_line_width(global.o_x+100,    global.o_y,        global.o_x+500,    global.o_y, 3);    //long line

draw_line_width(global.o_x+120,    global.o_y-10,     global.o_x+120,    global.o_y+10, 2);
draw_line_width(global.o_x+160,    global.o_y-10,     global.o_x+160,    global.o_y+10, 2);
draw_line_width(global.o_x+200,    global.o_y-10,     global.o_x+200,    global.o_y+10, 2);
draw_line_width(global.o_x+240,    global.o_y-10,     global.o_x+240,    global.o_y+10, 2);
draw_line_width(global.o_x+280,    global.o_y-10,     global.o_x+280,    global.o_y+10, 2);
draw_line_width(global.o_x+320,    global.o_y-10,     global.o_x+320,    global.o_y+10, 2);
draw_line_width(global.o_x+360,    global.o_y-10,     global.o_x+360,    global.o_y+10, 2);
draw_line_width(global.o_x+400,    global.o_y-10,     global.o_x+400,    global.o_y+10, 2);
draw_line_width(global.o_x+440,    global.o_y-10,     global.o_x+440,    global.o_y+10, 2);
draw_line_width(global.o_x+480,    global.o_y-10,     global.o_x+480,    global.o_y+10, 2);
