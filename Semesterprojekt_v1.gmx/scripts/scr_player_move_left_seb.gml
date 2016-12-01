
if (player_move_left) {
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


