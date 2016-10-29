
if (player_move_left) {
    //forward
    x = x + (cos((direction * pi) / 180) * global.maze_steplength);
    y = y - (sin((direction * pi) / 180) * global.maze_steplength);
    //left
    x = x + (cos(((direction + 90) * pi) / 180) * global.maze_steplength);
    y = y - (sin(((direction + 90) * pi) / 180) * global.maze_steplength); 
    direction += 90;    
} else {
    direction += 180;
}

scr_player_getView_seb();       


