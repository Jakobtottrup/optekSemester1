//save old view id
global.player_view_id_old = global.player_view_id;
global.player_movement = false;
global.count_moves++;
global.NV_last_direction = obj_player_seb.direction;
global.NV_count_step = 0;
global.permission_pda = false;

//remove door before moving
if (global.player_view_door) {
    walk_from_door = true;
} else {
    walk_from_door = false;
}


  //***********//
 //** Alarm **//
//***********//

if (instance_exists(obj_button_blink_horiz) || instance_exists(obj_button_blink_vert)){
    if !instance_exists(obj_arrow){
    instance_create(room_width-32, 500, obj_arrow)
}}
if global.count_moves == 10{
    if lives < 5{
        lives++;
    }
    global.count_moves = 0;
}

//get exhausted
global.player_breath_cycle_steps -= global.player_breath_move_cost;







