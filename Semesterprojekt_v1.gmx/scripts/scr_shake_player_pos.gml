/*
Shakes the object on which the player is currently standing if he triggers the alarm

called in end step event of obj_maze_ver_seb & obj_maze_hor_seb
*/

if shake_count > 0 && distance_to_object(obj_player_seb) <= (global.maze_steplength/3) && instance_exists(obj_arrow){
    //Change values depending on shake type!
    image_angle = irandom_range(-2, 2);
   // hspeed = irandom_range(-2, 2);
   // vspeed = irandom_range(-2, 2);
}
shake_count--;
if !instance_exists(obj_arrow){
    shake_count = 10;
}


