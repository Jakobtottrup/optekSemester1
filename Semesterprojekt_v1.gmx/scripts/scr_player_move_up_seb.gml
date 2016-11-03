
if (player_move_up) {
    //forward
    scr_player_move_function_up_seb();
    //forward
    scr_player_move_function_up_seb();
    
    //update view
    scr_player_getView_seb();
} else if (global.player_view_goal) {
    //single step forward to reach goal
    scr_player_move_function_up_seb();
}

