var i, j, k, used;
var check_around;
count = 0;

maze_ends_coor_x[0] = 0;
maze_ends_coor_y[0] = 0;

maze_goal_coor_x[0] = 0;
maze_goal_coor_y[0] = 0;

/*
go to each maze-joint and check for number of paths from joint
if there is only one path from joint, it is a dead end
remember the coordinates for the dead end
mark area around the dead end as protected (3)

2 2 2 2 2       x-x-x-x-x
2 0 0 0 2       x       x
2 0 2 0 2       x   x   x
2 0 2 0 2       x   x   x
2 2 2 2 2       x-x-x-x-x

becomes

2 2 2 2 2       x-x-x-x-x
2 0 3 0 2       x   o   x
2 3 2 3 2       x o-x-o x
2 0 2 0 2       x   x   x
2 2 2 2 2       x-x-x-x-x

*/

for (i = 0; i < (maze_width*2)-1; i+=2) {
    for (j = 0; j < (maze_height*2)-1; j+=2) {
        //*************************//
        //**** Check for paths ****//
        //*************************//
        check_around = 0;
        //check up
        if (j > 0) {
            if (maze_gen_data[i, j-1] == 2) {
                check_around++;
            }
        }
        //check down
        if (j < (maze_height*2)-2) {
            if (maze_gen_data[i, j+1] == 2) {
                check_around++;
            }
        }
        //check right
        if (i < (maze_width*2)-2) {
            if (maze_gen_data[i+1, j] == 2) {
                check_around++;
            }
        }
        //check left
        if (i > 0) {
            if (maze_gen_data[i-1, j] == 2) {
                check_around++;
            }
        }
        
        //**************************//
        //**** Note coordinates ****//
        //**************************//
        if (check_around < 2) {
            maze_ends_coor_x[count] = i;
            maze_ends_coor_y[count] = j;
            count++;
        }
    }
}        

//*********************//
//**** Choose ends ****//
//*********************//

var used_count;
/*
if the number of possible places to set a goal
is lower than the preffered amount of goals, 
set the preffered number of goals to the
highest amount possible
*/
if (count < maze_num_goals) {
    maze_num_goals = count;
}

//choose a number of different places for goals
//the same place can not be chosen twice
for (i = 0; i < maze_num_goals; i++) {
    used = true; //sets 'used' to true to force loop to begin
    //loop ends when it finds a place that is not already used
    while (used) {
        j = floor(random(count));
        //if the list contains anything, check each list item for a match
        //if no match, stop loop to save the new coordinates
        if (array_length_1d(maze_goal_coor_x) > 0) {
            //reset used_count to count from 0
            used_count = 0;
            //check all chosen goals for match
            for (k = 0; k < array_length_1d(maze_goal_coor_x); k++) {
                if ((maze_goal_coor_x[k] == maze_ends_coor_x[j])
                 && (maze_goal_coor_y[k] == maze_ends_coor_y[j])) {
                    //add one to 'used_count' if there is a match
                    used_count++;
                }
            }
            //if no match was found, stop loop
            if (used_count == 0) {
                used = false;
            }
        } else {
            //if the list contains no numbers to compare with, 
            //end loop and save coordinates
            used = false;
        }
    }
    //copy coordinates to end of goal list
    maze_goal_coor_x[i] = maze_ends_coor_x[j];
    maze_goal_coor_y[i] = maze_ends_coor_y[j];
}





//***********************//
//**** mark dead end ****//
//***********************//

for (k = 0; k < array_length_1d(maze_goal_coor_x); k++) {
    i = maze_goal_coor_x[k];
    j = maze_goal_coor_y[k];
    if (j > 0) {
    //mark up
        if (maze_gen_data[i, j-1] == 0) {
            maze_gen_data[i, j-1] = 3;
        }
    }
    //mark down
    if (j < (maze_height*2)-2) {
        if (maze_gen_data[i, j+1] == 0) {
            maze_gen_data[i, j+1] = 3;
        }
    }
    //mark right
    if (i < (maze_width*2)-2) {
        if (maze_gen_data[i+1, j] == 0) {
            maze_gen_data[i+1, j] = 3;
        }
    }
    //mark left
    if (i > 0) {
        if (maze_gen_data[i-1, j] == 0) {
            maze_gen_data[i-1, j] = 3;
        }
    }
}



