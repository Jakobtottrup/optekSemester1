//save old view id
global.player_view_id_old = global.player_view_id;
global.player_movement = false;

//remove door before moving
if (global.player_view_door) {
    walk_from_door = true;
} else {
    walk_from_door = false;
}

if (instance_exists(obj_button_blink_horiz) || instance_exists(obj_button_blink_vert)){
    if !instance_exists(obj_arrow){
    instance_create(room_width-100, 500, obj_arrow)
}}

