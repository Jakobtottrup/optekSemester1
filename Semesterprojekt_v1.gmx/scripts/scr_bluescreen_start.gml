/*
1. Disables all buttons on bluescreen start
2. Change all closed doors to open doors

called by obj_monitor_bluescreen create event
*/


//1
global.permission_listen = false;
global.permission_attack = false;
with(obj_button_red_jvt){
    instance_change(obj_button_inactive, false)
}
with(obj_button_red_vertical){
    instance_change(obj_button_inactive_vertical, false)
}


//2
global.laser_door_amount = 0;
if audio_is_playing(snd_laser_constant){
    audio_stop_sound(snd_laser_constant);
}
with(obj_door_closed){
    instance_change(obj_door_open, true);
}
with(obj_vent_door){
    instance_change(obj_vent_door_remove, true);
}

