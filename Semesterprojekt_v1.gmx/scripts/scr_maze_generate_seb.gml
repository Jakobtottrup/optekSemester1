scr_maze_generate_steplength_seb();
scr_maze_generate_init_seb();




/*  0 1 2 3 4 5 6
    1 o o o o o o      4*3
    2 o o o o o o
    3 o o o o o o
    4 o o o o o o
*/


var check_ran, check_ran_fin;
var check_up, check_down, check_right, check_left;
var check_all, check_back, check_running;

//begin in top left cornor
var i = 0; var j = 0;
check_running = 1;
maze_gen_data[i, j] = 1;


//loop
while(check_running == 1) {
        //get empty posibilities
        check_all = 0;
        
        //check right
        check_right = 0;
        if (i < ((maze_width-1)*2)-1) { //if j - 2 is inside grid
            if (maze_gen_data[i+2, j] == 0) {
                check_right = 1;
                check_all = 1;
            }
        }
        //check left
        check_left = 0;
        if (i > 1) { //if i - 2 is inside grid
            if (maze_gen_data[i-2, j] == 0) {
                check_left = 1;
                check_all = 1;
            }
        }
        //check up
        check_up = 0;
        if (j > 1) { //if j - 2 is inside grid
            if (maze_gen_data[i, j-2] == 0) {
                check_up = 1;
                check_all = 1;
            }
        }
        //check down
        check_down = 0;
        if (j < ((maze_height-1)*2)-1) { //if j + 2 is inside grid
            if (maze_gen_data[i, j+2] == 0) {
                check_down = 1;
                check_all = 1;
            }
        }

        
        


    if (check_all == 1) { //if any possibilities
        //choose random direction
        check_ran_fin = 0;
        while (check_ran_fin == 0) {
            check_ran = floor(random(4)) //random 0, 1, 2, 3
            if (check_ran == 0) { //if random is 0
                if (check_right == 1) { //if right is possible
                    maze_gen_data[i+1, j] = 1; //mark path
                    maze_gen_data[i+2, j] = 1; //mark destination
                    i += 2; //move pointer two to the right
                    check_ran_fin = 1; //stop search
                }
            } else if (check_ran == 1) {
                if (check_up == 1) { //if up is possible
                    maze_gen_data[i, j-1] = 1; //mark path
                    maze_gen_data[i, j-2] = 1; //mark destination
                    j -= 2; //move pointer two to the right
                    check_ran_fin = 1; //stop search
                }
            } else if (check_ran == 2) {
                if (check_left == 1) { //if left is possible
                    maze_gen_data[i-1, j] = 1; //mark path
                    maze_gen_data[i-2, j] = 1; //mark destination
                    i -= 2; //move pointer two to the right
                    check_ran_fin = 1; //stop search
                }
            } else {
                if (check_down == 1) { //if down is possible
                    maze_gen_data[i, j+1] = 1; //mark path
                    maze_gen_data[i, j+2] = 1; //mark destination
                    j += 2; //move pointer two to the right
                    check_ran_fin = 1; //stop search
                }
            }
        }
    } else {
        //backtrack
        //get visited posibilities
        check_back = 0;
        
        //check right
        if (i < ((maze_width-1)*2)-1) { //if j - 2 is inside grid
            if (maze_gen_data[i+1, j] == 1) {
                check_back = 1;
                maze_gen_data[i, j] = 2; //mark path
                maze_gen_data[i+1, j] = 2; //mark destination
                i += 2;
            }
        }
        if (check_back == 0) {
            //check left
            if (i > 1) { //if i - 2 is inside grid
                if (maze_gen_data[i-1, j] == 1) {
                    check_back = 1;
                    maze_gen_data[i, j] = 2; //mark path
                    maze_gen_data[i-1, j] = 2; //mark destination
                    i -= 2;
                }
            }
        }
        if (check_back == 0) {
            //check up
            if (j > 1) { //if j - 2 is inside grid
                if (maze_gen_data[i, j-1] == 1) {
                    check_back = 1;
                    maze_gen_data[i, j] = 2; //mark path
                    maze_gen_data[i, j-1] = 2; //mark destination
                    j -= 2;
                }
            }
        }
        if (check_back == 0) {
            //check down
            if (j < ((maze_height-1)*2)-1) { //if j + 2 is inside grid
                if (maze_gen_data[i, j+1] == 1) {
                    check_back = 1;
                    maze_gen_data[i, j] = 2; //mark path
                    maze_gen_data[i, j+1] = 2; //mark destination
                    j += 2;
                }
            }
        }
        if (check_back == 0) {
            //finished
            check_running = 0;
        }
    }
}

scr_maze_generate_convert_seb();





