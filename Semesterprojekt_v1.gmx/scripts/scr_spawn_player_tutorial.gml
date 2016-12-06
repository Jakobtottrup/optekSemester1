
//vertical spawn
pos_ran_x = 3; 
pos_ran_y = 2;
    
//go to given point
x = (cpu_x + cpu_offset_x) + (global.maze_steplength * 2 * pos_ran_x);
y = (cpu_y + cpu_offset_y + global.maze_steplength) + (global.maze_steplength * 2 * pos_ran_y);
        
with (instance_create(x, y, obj_player_seb)) {  //spawn player and give direction
    direction = 90;
}


