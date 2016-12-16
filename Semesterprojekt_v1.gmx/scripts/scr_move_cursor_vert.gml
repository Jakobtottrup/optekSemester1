//draw circle and set color
draw_set_color(c_white);
draw_circle(x, y, 8, false);

//calculate random offset for every 15 step
if(keyboard_check_pressed(vk_anykey)) {
    k = random_range(-130, -510);
}

if (irandom(30) == 0) {
    j = random_range(-20, 20);
}

//using player direction to calculate position for the cursor
NV_offset_y = j + k;

//sets velocity for cursor move, based on distance to endpoint
cur_spd = (distance_to_point(global.o_x, global.o_y+NV_offset_y) / 50) + 2

//move cursor towards distination
if (point_distance(x, y, global.o_x, global.o_y+NV_offset_y) > 4)
   {
   move_towards_point(global.o_x, global.o_y+NV_offset_y, cur_spd);
   }
else speed = 0;
