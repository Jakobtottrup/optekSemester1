//NV graphics overlay
draw_set_color(c_white);
draw_set_font(font_binary_NV);

draw_set_halign(fa_center);


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

for(m = 120; m < 520; m += 40) {
    draw_line_width(global.o_x-10, global.o_y-m, global.o_x+10, global.o_y-m, 2);    //short vertical lines 
    draw_line_width(global.o_x+m, global.o_y-10, global.o_x+m, global.o_y+10, 2);     //short horizontal lines
}

txt_scl = 1.2;

//vertical text
draw_text_transformed(global.o_x-30, global.o_y-130, "20", txt_scl, txt_scl, 0);
draw_text_transformed(global.o_x-30, global.o_y-250, "40", txt_scl, txt_scl, 0);
draw_text_transformed(global.o_x-30, global.o_y-370, "60", txt_scl, txt_scl, 0);
draw_text_transformed(global.o_x-30, global.o_y-490, "80", txt_scl, txt_scl, 0);

//horizontal text
draw_text_transformed(global.o_x+120, global.o_y+15, "E", txt_scl, txt_scl, 0);
draw_text_transformed(global.o_x+240, global.o_y+15, "N", txt_scl, txt_scl, 0);
draw_text_transformed(global.o_x+360, global.o_y+15, "W", txt_scl, txt_scl, 0);
draw_text_transformed(global.o_x+480, global.o_y+15, "S", txt_scl, txt_scl, 0);

//draw compass
//draw_sprite(spr_compass, 0, global.o_x, global.o_y);

//compass_rotation = obj_player_seb.direction * (360/270);
//draw_sprite_ext(spr_compass, 1, global.o_x, global.o_y, 1, 1, 0, c_white, 1);
