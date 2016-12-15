if lives =0 || instance_exists(obj_monitor_bluescreen) {
    global.player_movement = false;
    with(obj_button_red_jvt){
        instance_change(obj_button_inactive, false)
    }
    with(obj_button_red_vertical){
        instance_change(obj_button_inactive_vertical, false)
    }
}
