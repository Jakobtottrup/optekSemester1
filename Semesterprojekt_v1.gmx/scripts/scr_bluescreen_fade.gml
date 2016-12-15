/*
1. re-enables all buttons after blue screen disappears

Called by obj_monitor_bluescreen destroy event
*/


//1

global.permission_listen = true;
global.permission_attack = true;
with(obj_button_inactive){
    instance_change(obj_button_red_jvt, false)
}
with(obj_button_inactive_vertical){
    instance_change(obj_button_red_vertical, false)
}

