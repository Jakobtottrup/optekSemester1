
if (player_move_right) {
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
       


