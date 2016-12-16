//NV graphics overlay
draw_set_color(c_white);

//origin of which the graphics are drawn from
global.o_x = 50;
global.o_y = 850;

//create cursors
if !instance_exists(obj_NV_cursor_vert) && !instance_exists(obj_NV_cursor_horiz) {
    instance_create(global.o_x, global.o_y-random_offset, obj_NV_cursor_vert);
    instance_create(global.o_x+random_offset, global.o_y, obj_NV_cursor_horiz);
}

//draw lines
draw_line_width(global.o_x, global.o_y-100, global.o_x, global.o_y-500, 3);    //long vertical line
draw_line_width(global.o_x+100, global.o_y, global.o_x+500, global.o_y, 3);        //long horizontal line

for(i = 120; i < 520; i += 40) {
    draw_line_width(global.o_x-10, global.o_y-i, global.o_x+10, global.o_y-i, 2);    //short vertical lines 
    draw_line_width(global.o_x+i, global.o_y-10, global.o_x+i, global.o_y+10, 2);     //short horizontal lines
}

//vertical text
draw_text(global.o_x-30, global.o_y-130, "20");
draw_text(global.o_x-30, global.o_y-250, "40");
draw_text(global.o_x-30, global.o_y-370, "60");
draw_text(global.o_x-30, global.o_y-490, "80");

//horizontal text
draw_text(global.o_x+120, global.o_y+15, "0");
draw_text(global.o_x+240, global.o_y+15, "90");
draw_text(global.o_x+360, global.o_y+15, "180");
draw_text(global.o_x+480, global.o_y+15, "270");
