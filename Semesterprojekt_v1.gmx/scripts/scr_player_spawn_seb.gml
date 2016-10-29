//if random 1 or 0 = 1 -> spawn in horizontal grid - else -> spawn in vertical grid

//choose random x 1-maze_width
//choose random y 1-maze_height
//jump to location
//if there is not a maze-section, try again
//if there is a maze section, spawn player object



pos_ran_seek = true; //it will keep trying to find a spawn till not true
pos_ran_limit = 20; //attempts at finding a possible spawn point
pos_ran_dir = 0; //determines if direction is opposite of first given


while (pos_ran_seek && pos_ran_limit > 0) {
    pos_ran = floor(random(2)); //random number from 0.0000 to 1.99999 - floored with equal chance for 1 and 0
    //pos_ran 1 being horizontal spawn, 0 being vertical
    
    if (pos_ran = 1) {
        //horizontal spawn
        pos_ran_x = floor(random(maze_width - 1)); //horizontal grid has one less value than the vertical grid
        pos_ran_y = floor(random(maze_height));
        
        //go to random point to check for maze section
        x = (cpu_x + cpu_offset_x + global.maze_steplength) + (global.maze_steplength * 2 * pos_ran_x);
        y = (cpu_y + cpu_offset_y) + (global.maze_steplength * 2 * pos_ran_y);
        
        if position_meeting(x, y, obj_maze_hor_seb) {       //if maze section
            with (instance_create(x, y, obj_player_seb)) {  //spawn player and give direction (with() )
                pos_ran_dir = floor(random(2));
                if (pos_ran_dir == 0) {
                    direction = 0;
                } else {
                    direction = 180;
                }
            }
            pos_ran_seek = false; //stop loop
        } else {
            pos_ran_limit -= 1; //count attemtp when not able to spawn here
        }
    } else {
        //vertical spawn
        pos_ran_x = floor(random(maze_width)); 
        pos_ran_y = floor(random(maze_height - 1)); //vertical grid has one less value than the horizontal grid
    
        //go to random point to check for maze section
        x = (cpu_x + cpu_offset_x) + (global.maze_steplength * 2 * pos_ran_x);
        y = (cpu_y + cpu_offset_y + global.maze_steplength) + (global.maze_steplength * 2 * pos_ran_y);
        
        if position_meeting(x, y, obj_maze_ver_seb) {       //if maze section
            with (instance_create(x, y, obj_player_seb)) {  //spawn player and give direction
                pos_ran_dir = floor(random(2));
                if (pos_ran_dir == 0) {
                    direction = 90;
                } else {
                    direction = 270;
                }
            }
            pos_ran_seek = false; //stop loop
        } else {
            pos_ran_limit -= 1; //count attemtp when not able to spawn here
        }
    }
}

//if no spawn was possible withing given attempts
if (pos_ran_limit <= 0) {
    show_message("No possible spawnpoint found");
}


