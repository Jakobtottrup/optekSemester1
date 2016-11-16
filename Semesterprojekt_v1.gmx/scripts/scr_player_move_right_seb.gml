if(global.player_movement == true){
    global.last_move=3;
    if (player_move_right) {
        //forward
        scr_player_move_function_up_seb();
        //right
        scr_player_move_function_right_seb();
    
        //turn player
        direction -= 90;
    } else {
        //if no possible turn, flip player
        direction += 180;
    }
           
    //update view
    scr_player_getView_seb();
}

