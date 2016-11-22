//global.player_moving = true;
//if(global.player_movement == true){
    global.last_move=2;    
    if (player_move_left) {
        //forward
        scr_player_move_function_up_seb();
        //left
        scr_player_move_function_left_seb(); 
        
        //turn player
        direction += 90;    
    } else {
        //if no possible turn, flip player
        direction += 180;
    }
    
    //update view
    scr_player_getView_seb();       
//}    

