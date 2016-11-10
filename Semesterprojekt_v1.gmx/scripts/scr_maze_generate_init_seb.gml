//generate maze - currently fixed maze data
//maze_data = string('11011'+'101101'+'01110'+'101011'+'10111'+'101011'+'11010');

//ID 3 o--o--o  o--o--o      1 1 0 1 1
//     |     |  |     |     1 0 1 1 0 1
//     o  o--o--o--o  o      0 1 1 1 0         '11011'+'101101'+'01110'+'101011'+'10111'+'101011'+'11010'
//     |     |     |  |     1 0 1 0 1 1
//     o--o  o--o--o--o      1 0 1 1 1
//     |     |     |  |     1 0 1 0 1 1
//     o--o--o  o--o  o      1 1 0 1 0






//********** Random Maze Generation **********//

/*
set variables
build empty maze-area

            0 0 0 0 0
            0 0 0 0 0
            0 0 0 0 0

begin in top left cornor

            1 0 0 0 0
            0 0 0 0 0
            0 0 0 0 0

loop till finished - first cell is backtracked
    get empty posibilities
    
            1 0 x 0 0
            0 0 0 0 0
            x 0 0 0 0
    
        choose one at random
        
            1 0 X 0 0
            0 0 0 0 0
            x 0 0 0 0
        
        mark path
        
            1 1 1 0 0
            0 0 0 0 0
            0 0 0 0 0
        
    if none
    
            1 1 1 0 0
            0 0 1 0 0
           '1'1 1 0 0
    
        backtrack and mark path
        
            1 1 1 0 0
            0 0 1 0 0
            2 2 1 0 0
        
convert to stringmap
*/


//set variables
maze_gen_data[0] = 0;

var i, j;


//build empty maze-area
for (i = 0; i < ((maze_width*2)-1); i++) {
    for (j = 0; j < ((maze_height*2)-1); j++) {
        maze_gen_data[i, j] = 0;
    }
}

