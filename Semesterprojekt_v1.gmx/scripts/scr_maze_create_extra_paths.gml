
var i;
var ran_w, ran_h;


//total amount of path ways
var maze_total_paths = ((maze_width - 1) * maze_height) + ((maze_height - 1) * maze_width);
//attempts = total amount of empty path ways
var maze_empty_paths = (maze_width - 1) * (maze_height - 1);
//attempts = preferred amount of paths placed
maze_attempts = (maze_empty_paths / 100) * maze_extra_path_percent;






/*
with (maze_total_paths) attempts, it will try to place a path
but will stop when (given percent of maze_empty_paths) paths
has been placed, even though it got more attempts left
*/
i = 0;
while (i < maze_total_paths && maze_attempts > 0) {
    //random chance for horizontal or vertical
    if (irandom(1) == 1) {
        //horizontal
        ran_w = floor(random(maze_width - 1))*2;
        ran_h = floor(random(maze_height))*2;
    
        //place mazepart if the random position is allowed
        if (maze_gen_data[ran_w+1, ran_h] == 0) {
            maze_gen_data[ran_w+1, ran_h] = 2;
            
            //make sure to protect all empty places from tight turns
            scr_maze_generate_protect_tight_paths();
            //since a path was placed, there will be one less chance to place another
            maze_attempts--;
        } 
    } else {
        //vertical
        ran_w = floor(random(maze_width))*2;
        ran_h = floor(random(maze_height-1))*2;
    
        //place mazepar if the random position is allowed
        if (maze_gen_data[ran_w, ran_h+1] == 0) {
            maze_gen_data[ran_w, ran_h+1] = 2;
            
            //make sure to protect all empty places from tight turns
            scr_maze_generate_protect_tight_paths();
            //since a path was placed, there will be one less chance to place another
            maze_attempts--;
        } 
    }
    i++;
}



