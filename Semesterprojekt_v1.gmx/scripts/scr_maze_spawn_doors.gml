
for (i = 0; i < maze_num_doors; i++) {
    pos_ran_seek = true; //it will keep trying to find a spawn till not true
    pos_ran_limit = 100; //attempts at finding a possible spawn point for each door

    while (pos_ran_seek && pos_ran_limit > 0) {
        pos_ran_x = floor(random(maze_width)); //horizontal grid has one less value than the vertical grid
        pos_ran_y = floor(random(maze_height));
        
        //go to random point to check for maze section
        x = (cpu_x + cpu_offset_x) + (global.maze_steplength * 2 * pos_ran_x);
        y = (cpu_y + cpu_offset_y) + (global.maze_steplength * 2 * pos_ran_y);
        
        //if touching maze sections in both directions = not in a dead end
        if (position_meeting(x, y, obj_maze_hor_seb) && position_meeting(x, y, obj_maze_ver_seb)) {       //if maze section
            //if not touching goal
            if !position_meeting(x, y, obj_win) {
                //if not touching other door
                if !position_meeting(x, y, obj_door_open) {
                    
                    //if there is a path to the right
                    if (position_meeting(x + global.maze_steplength, y, obj_maze_hor_seb)) {
                        //and a door to the right
                        if position_meeting(x + (2 * global.maze_steplength), y, obj_door_open) {
                            //pick another spot
                            pos_ran_seek = false; //stop loop
                        }
                    }
                    
                    //if there is a path to the left
                    if (position_meeting(x - global.maze_steplength, y, obj_maze_hor_seb)) {
                        //and a door to the left
                        if position_meeting(x - (2 * global.maze_steplength), y, obj_door_open) {
                            //pick another spot
                            pos_ran_seek = false; //stop loop
                        }
                    }
                    
                    //if there is a path above
                    if (position_meeting(x, y - global.maze_steplength, obj_maze_ver_seb)) {
                        //and a door above
                        if position_meeting(x, y - (2 * global.maze_steplength), obj_door_open) {
                            //pick another spot
                            pos_ran_seek = false; //stop loop
                        }
                    }
                    
                    //if there is a path below
                    if (position_meeting(x, y + global.maze_steplength, obj_maze_ver_seb)) {
                        //and a door below
                        if position_meeting(x, y + (2 * global.maze_steplength), obj_door_open) {
                            //pick another spot
                            pos_ran_seek = false; //stop loop
                        }
                    }
                    
                    //if there are no door beside this spot
                    if (pos_ran_seek) {
                        //spawn door
                        instance_create(x, y, obj_door_open);
                        pos_ran_seek = false; //stop loop
                    }
                }
            }
        } else {
            pos_ran_limit -= 1; //count attemtp when not able to spawn here
        }
    }
}


