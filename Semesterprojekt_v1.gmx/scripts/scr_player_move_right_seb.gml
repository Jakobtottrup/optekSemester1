if (!instance_exists(obj_vent_ani_start) && !instance_exists(obj_vent_ani_end)) {
    if (player_move_right) {
        //tutorial task take a turn
        if (global.tutorial_state == 2) {
            if (global.tutorial_task[1] < 100) {
                global.tutorial_task[1] += 10;
            }
        }
        
        //forward
        scr_player_move_function_up_seb();
        //right
        scr_player_move_function_right_seb();
    
        //save direction
        scr_player_moved_init();
        global.player_last_dir = 1;
        
        //turn player
        direction -= 90;
        
        //update view
        scr_player_getView_seb();
        
        scr_player_moved_ani();
    } else {
        //tutorial task turn around
        if (global.tutorial_state == 2) {
            if (global.tutorial_task[2] < 100) {
                global.tutorial_task[2] += 20;
            }
        }
        
        //save direction
        scr_player_moved_init();
        global.player_return = true;
        
        //last direction set to not 0, to not walking backwards
        global.player_last_dir = 1;
        
        //if no possible turn, flip player
        direction += 180;
        
        //update view
        scr_player_getView_seb();
        
        scr_player_moved_ani();
    }
}


