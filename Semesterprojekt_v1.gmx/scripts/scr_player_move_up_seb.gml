       
if (player_move_up) {
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
