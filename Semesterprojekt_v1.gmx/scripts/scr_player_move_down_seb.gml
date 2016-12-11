if (!instance_exists(obj_vent_ani_start) && !instance_exists(obj_vent_ani_end)) { 
    if (player_move_down) {
        //tutorial task move backwards
        if (global.tutorial_state == 2) {
            if (global.tutorial_task[3] < 100) {
                global.tutorial_task[3] += 20;
            }
        }
        
        //backward
        scr_player_move_function_down_seb(); 
        //backward
        scr_player_move_function_down_seb();
        
        //save direction
        scr_player_moved_init();
        global.player_last_dir = 0;
        
        //update view
        scr_player_getView_seb();
        
        scr_player_moved_ani();
    }
}
