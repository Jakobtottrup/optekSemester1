
for (i = 0; i < maze_num_doors; i++) {
    pos_ran_seek = true; //it will keep trying to find a spawn till not true
    pos_ran_limit = 20; //attempts at finding a possible spawn point

    while (pos_ran_seek && pos_ran_limit > 0) {
        pos_ran_x = floor(random(maze_width - 1)); //horizontal grid has one less value than the vertical grid
        pos_ran_y = floor(random(maze_height));
        
        //go to random point to check for maze section
        x = (cpu_x + cpu_offset_x) + (global.maze_steplength * 2 * pos_ran_x);
        y = (cpu_y + cpu_offset_y) + (global.maze_steplength * 2 * pos_ran_y);
            
        if (position_meeting(x, y, obj_maze_hor_seb) || position_meeting(x, y, obj_maze_ver_seb)) {       //if maze section
            if position_meeting(x, y, obj_win) {
                //if it touches a goal
                //do nothing
            } else {
                //if not touching a goal
                //spawn doow
                instance_create(x, y, obj_door_open)
                pos_ran_seek = false; //stop loop
            }
        } else {
            pos_ran_limit -= 1; //count attemtp when not able to spawn here
        }
    }
}


