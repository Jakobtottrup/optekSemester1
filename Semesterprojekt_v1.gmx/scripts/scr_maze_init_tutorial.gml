//this script sets all variables needed to build and place the maze

//world size - paths horizontaly + vertically
maze_width = 4;  //horizontal paths  |  |  |
maze_height = 4; //vertical paths     -- --

global.count_moves = 0;

//security screen size
cpu_x = 1100;
cpu_y = 250;

cpu_offset_x = 0;
cpu_offset_y = 0;

cpu_button_offset = 80;

//view id
global.player_view_id = 0;
global.player_view_id_old = 0;
global.player_last_dir = 0;

//movement info
global.player_movement = true;
global.player_return = false;

//detail animation info
global.sword_ani_id = 0;
global.button_scale = 1;

global.nightvision_mode = 0;

//maze jumplength
global.maze_steplength = 90;

tutorial_page = 0;

//The data is set instead of randomly generated
//to make sure all tutorials are completely the same.

//Data for horizontal paths
maze_data_hor[0]  = 2;
maze_data_hor[1]  = 2;
maze_data_hor[2]  = 2;
maze_data_hor[3]  = 0;
maze_data_hor[4]  = 2;
maze_data_hor[5]  = 0;
maze_data_hor[6]  = 2;
maze_data_hor[7]  = 2;
maze_data_hor[8]  = 2;
maze_data_hor[9]  = 2;
maze_data_hor[10] = 2;
maze_data_hor[11] = 0;

//Data for vertical paths
maze_data_ver[0]  = 2;
maze_data_ver[1]  = 2;
maze_data_ver[2]  = 0;
maze_data_ver[3]  = 2;
maze_data_ver[4]  = 2;
maze_data_ver[5]  = 0;
maze_data_ver[6]  = 2;
maze_data_ver[7]  = 2;
maze_data_ver[8]  = 2;
maze_data_ver[9]  = 0;
maze_data_ver[10] = 2;
maze_data_ver[11] = 2;

//reset tutorial tasks
global.tutorial_task[0] = 0; //move forward
global.tutorial_task[1] = 0; //turn
global.tutorial_task[2] = 0; //move back
global.tutorial_task[3] = 0; //turn around

global.tutorial_task[4] = 0;
global.tutorial_task[5] = 0; //page 1, mission state

global.tutorial_task[6] = 0; //slow move forward
global.tutorial_task[7] = 0; //slow turn
global.tutorial_task[8] = 0; //slow move back
global.tutorial_task[9] = 0; //slow turn around
