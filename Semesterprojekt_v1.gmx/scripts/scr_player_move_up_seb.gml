if (!instance_exists(obj_vent_ani_start) && !instance_exists(obj_vent_ani_end)) {
    if (player_move_up) {
        //task move forward
        if (global.tutorial_state == 2) {
            if (global.tutorial_task[0] < 100) {
                global.tutorial_task[0] += 10;
            }
        }
        
        //forward
        scr_player_move_function_up_seb();
        //forward
        scr_player_move_function_up_seb();
        
        //save direction
        scr_player_moved_init();
        global.player_last_dir = 2;
        
        //update view
        scr_player_getView_seb();
        
        scr_player_moved_ani();
    } else if (global.player_view_goal) {
        //single step forward to reach goal
        scr_player_move_function_up_seb();
    }
}
