var i, j, k, used;
var check_around;


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

for (i = 1; i < ((maze_width)*2)-1; i+=2) {
    for (j = 1; j < ((maze_height)*2)-1; j+=2) {
        //*************************//
        //**** Check for paths ****//
        //*************************//
        check_around = 0;
        
        //check up
        if (maze_gen_data[i, j-1] == 2) {
            check_around++;
        }
        //check down
        if (maze_gen_data[i, j+1] == 2) {
            check_around++;
        }
        //check right
        if (maze_gen_data[i+1, j] == 2) {
            check_around++;
        }
        //check left
        if (maze_gen_data[i-1, j] == 2) {
            check_around++;
        }
        
        //****************************************************//
        //**** project available empty path from new path ****//
        //****************************************************//
        
        if (check_around > 2) {
            //mark up
            if (maze_gen_data[i, j-1] == 0) {
                maze_gen_data[i, j-1] = 3;
            }
            //mark down
            if (maze_gen_data[i, j+1] == 0) {
                maze_gen_data[i, j+1] = 3;
            }
            //mark right
            if (maze_gen_data[i+1, j] == 0) {
                maze_gen_data[i+1, j] = 3;
            }
            //mark left
            if (maze_gen_data[i-1, j] == 0) {
                maze_gen_data[i-1, j] = 3;
            }
        }
    }
}        


