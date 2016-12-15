scr_maze_generate_steplength_seb();
//notes and explanation of the maze generation
scr_maze_generate_init_seb();

//generate maze
scr_maze_generate_main();

//protect empty spots from new paths
scr_maze_generate_get_ends();
scr_maze_generate_protect_tight_paths();

//create new paths
scr_maze_create_extra_paths();


//get the exact length to a goal from anywhere in the maze
scr_maze_generate_goal_distance();
//get the longest distance
scr_maze_generate_longest_distance();
//choose player spawn position
scr_maze_generate_choose_spawn();


//convert the maze generation data to useable data
scr_maze_generate_convert_seb();


