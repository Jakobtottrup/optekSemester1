//get empty posibilities
    check_all = 0;
    
/*  0 1 2 3 4 5 6
    1 o o o o o o      4*3
    2 o o o o o o
    3 o o o o o o
    4 o o o o o o
*/
    

    //check right
    check_right = 0;
    if (i < ((maze_width-1)*2)-1) { //if j - 2 is inside grid
        if (maze_gen_data[i+2, j] != 0) {
            check_right = 1;
            check_all = 1;
        }
    }
    //check left
    check_left = 0;
    if (i > 1) { //if i - 2 is inside grid
        if (maze_gen_data[i-2, j] != 0) {
            check_left = 1;
            check_all = 1;
        }
    }
    //check up
    check_up = 0;
    if (j > 1) { //if j - 2 is inside grid
        if (maze_gen_data[i, j-2] != 0) {
            check_up = 1;
            check_all = 1;
        }
    }
    //check down
    check_down = 0;
    if (j < ((maze_height-1)*2)-1) { //if j + 2 is inside grid
        if (maze_gen_data[i, j+2] != 0) {
            check_down = 1;
            check_all = 1;
        }
    }
