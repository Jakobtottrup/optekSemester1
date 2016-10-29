
if (player_move_up) {
    //forward
    x = x + (cos((direction * pi) / 180) * global.maze_steplength);
    y = y - (sin((direction * pi) / 180) * global.maze_steplength); 
    //forward
    x = x + (cos((direction * pi) / 180) * global.maze_steplength);
    y = y - (sin((direction * pi) / 180) * global.maze_steplength);
    scr_player_getView_seb();
}

