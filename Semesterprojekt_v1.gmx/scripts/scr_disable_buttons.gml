/*
1. disables all buttons when permission to attack or listen is false

called in each button's step event
*/

if (global.permission_attack == false && global.permission_listen == false) {
    with(obj_button_red_jvt){
        instance_change(obj_button_inactive, false);
    }
    with(obj_button_red_vertical){
        instance_change(obj_button_inactive_vertical, false);
    }
}
