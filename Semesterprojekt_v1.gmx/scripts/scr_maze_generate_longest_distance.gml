
//longest distance is reset to 0
maze_longest_distance = 0;

//for every position in the maze
for (i = 0; i < ((maze_width*2)-1); i++) {
    for (j = 0; j < ((maze_height*2)-1); j++) {
        //if the value on the current checking position
        //is larger than any value seen before
        if (maze_dist_data[i, j] > maze_longest_distance) {
            //set the new value as the largest seen
            maze_longest_distance = maze_dist_data[i, j];
        }
    }
}


