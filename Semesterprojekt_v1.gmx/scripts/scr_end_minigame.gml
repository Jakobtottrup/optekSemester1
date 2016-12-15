///COUNTDOWN
//draw_text(100,100, string(floor(((start+maxtime-current_time)/1000)mod 60)))

draw_set_colour(c_red); //Sets color to red

//converts the countdown timer value into progressbar
count_x = obj_PDA.x+((start+maxtime-current_time)/1000)*38 
draw_rectangle(obj_PDA.x+10, obj_PDA.y+10, count_x, obj_PDA.y+30, false);


//When all papers a collected
if (!instance_exists(obj_PDA_folder) && !instance_exists(obj_PDA_paper)) {
    with(obj_PDA) instance_destroy();
    with(obj_PDA_frame) instance_destroy();
    with(obj_PDA_controller) instance_destroy();
    with(obj_PDA_player) instance_destroy();
    instance_create(0, 0, obj_monitor_bluescreen);
}

//When the timer reaches 0.
if (start+maxtime < current_time) {
    with(obj_PDA) instance_destroy();
    with(obj_PDA_frame) instance_destroy();
    with(obj_PDA_controller) instance_destroy();
    with(obj_PDA_player) instance_destroy();
    with(obj_PDA_paper) instance_destroy();
    
}