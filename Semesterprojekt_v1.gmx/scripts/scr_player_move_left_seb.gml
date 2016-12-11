if (!instance_exists(obj_vent_ani_start) && !instance_exists(obj_vent_ani_end)) {
    if (player_move_left) {
        //tutorial task take a turn
        if (global.tutorial_state == 2) {
            if (global.tutorial_task[1] < 100) {
                //turn 5 times
                global.tutorial_task[1] += 20;
            }
        }
        
        //** actual movement **//
        
        //forward
        scr_player_move_function_up_seb();
        //left
        scr_player_move_function_left_seb(); 
        
        //save direction
        scr_player_moved_init();
        global.player_last_dir = 3;
        
        //turn player
        direction += 90;    
        
        //update view
        scr_player_getView_seb();
    
        scr_player_moved_ani();
    } else {
        //tutorial task turn around
        if (global.tutorial_state == 2) {
            if (global.tutorial_task[2] < 100) {
                //turn around 2 times
                global.tutorial_task[2] += 50;
            }
        }
        
        //** actual movement **//
        
        scr_player_moved_init();
        global.player_return = true;
        
        //last direction set to not 0, to not walking backwards
        global.player_last_dir = 3;
        
        //if no possible turn, flip player
        direction += 180;
        
        //update view
        scr_player_getView_seb();
        
        scr_player_moved_ani();
    }
}

