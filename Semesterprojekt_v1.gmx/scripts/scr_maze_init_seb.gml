//this script sets all variables needed to build and place the maze

//world size - paths horizontaly + vertically
maze_width = global.customize_grid_x;  //horizontal paths  |  |  |
maze_height = global.customize_grid_y; //vertical paths     -- --
global.count_moves = 0;
//security screen size
cpu_width = 850;
cpu_height = 630;

cpu_x = 930;
cpu_y = 130;

cpu_offset_x = 0;
cpu_offset_y = 0;

cpu_button_offset = 70;

//view id
global.player_view_id = 0;
global.player_view_id_old = 0;
global.player_last_dir = 0;
global.player_view_door = false;

//movement info
global.player_movement = true;
global.player_return = false;

//detail animation info
global.sword_ani_id = 0;
global.button_scale = 1;

global.tutorial_state = 0;
global.nightvision_mode = 0;

global.player_health = 100;

//max number of goals
maze_num_goals = 3;
//max number of doors
maze_num_doors = 6;
//percent extra paths
maze_extra_path_percent = 20;

//the top percent distances to choose from
//when choosing the player spawn point
spawn_min_dist_goal = 30; //   '/.

//start maze generation
scr_maze_generate_seb()


