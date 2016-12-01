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

//convert the maze generation data to useable data
scr_maze_generate_convert_seb();


