//draw circle and set color
draw_set_color(c_white);
draw_circle(x, y, 8, false);

if (irandom(15) == 0) {
    j = random_range(-20, 20);
}

//using player direction to calculate position for the cursor
NV_offset_y = j - (global.shake_x*10) - 250;

if (NV_offset_y < -500) {
    cur_spd = 0;
}
if (NV_offset_y > -100) {
    cur_spd = 0;
    
} else {
    //sets velocity for cursor move, based on distance to endpoint
    cur_spd = (distance_to_point(global.o_x, global.o_y+NV_offset_y) / 50) + 2
}

//move cursor towards distination
if (point_distance(x, y, global.o_x, global.o_y+NV_offset_y) > 4)
   {
   move_towards_point(global.o_x, global.o_y+NV_offset_y, cur_spd);
   }
else speed = 0;

//draw_text(500, 500, "pitch "+string(NV_offset_y));

