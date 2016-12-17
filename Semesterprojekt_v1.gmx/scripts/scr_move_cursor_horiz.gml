//draw circle and set color
draw_set_color(c_white);
draw_circle(x, y, 8, false);

//calculate random offset for every 15 step
if (irandom(15) == 0) {
    j = random_range(-20, 20);
}

//using player direction to calculate position for the cursor
if (instance_exists(obj_player_seb)) {
    global.NV_offset_x = 120 + j + (obj_player_seb.direction * (360/270));
} else {
    global.NV_offset_x = random_range(0, 270)
}


//sets velocity for cursor move, based on distance to endpoint
cur_spd = (distance_to_point(global.o_x+global.NV_offset_x, global.o_y) / 50) + 2

//move cursor towards distination
if (point_distance(x, y, global.o_x+global.NV_offset_x, global.o_y) > 4)
   {
   move_towards_point(global.o_x+global.NV_offset_x, global.o_y, cur_spd);
} else {
    speed = 0;
}
