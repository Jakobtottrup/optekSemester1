global.PDA_game_freeze = true;


maze_width = 5;
maze_height = 4;

//Plays song when tutorial starts//
audio_play_sound(snd_tutorial_music,1,true);

//own timeline step count
tutorial_step = 0;


//narrator
tuto_col_nar = c_lime;
tuto_fnt_nar = fnt_tutorial;
tuto_fnt_nar_bold = fnt_tutorial_bold;

//thief
tuto_col_player = c_red;
tuto_fnt_player = fnt_tutorial;
tuto_fnt_player_bold = fnt_tutorial_bold;

//guard
tuto_col_guard = c_aqua;
tuto_fnt_guard = fnt_tutorial;
tuto_fnt_guard_bold = fnt_tutorial_bold;




//The data is set instead of randomly generated
//to make sure all tutorials are completely the same.

/*
o--o--o--o  o
|  |     |  s
o  o--o  o  o
|     |  |  s
o--o--o--o  o
|     |  |  s
o--o--o  osso
*/

//Data for horizontal paths
maze_data_hor[0]  = 2;
maze_data_hor[1]  = 2;
maze_data_hor[2]  = 2;
maze_data_hor[3]  = 0;

maze_data_hor[4]  = 0;
maze_data_hor[5]  = 2;
maze_data_hor[6]  = 0;
maze_data_hor[7]  = 0;

maze_data_hor[8]  = 2;
maze_data_hor[9]  = 2;
maze_data_hor[10] = 2;
maze_data_hor[11] = 0;

maze_data_hor[12] = 2;
maze_data_hor[13] = 2;
maze_data_hor[14] = 0;
maze_data_hor[15] = 0;

//Data for vertical paths
maze_data_ver[0]  = 2;
maze_data_ver[1]  = 2;
maze_data_ver[2]  = 0;
maze_data_ver[3]  = 2;
maze_data_ver[4]  = 0;

maze_data_ver[5]  = 2;
maze_data_ver[6]  = 0;
maze_data_ver[7]  = 2;
maze_data_ver[8]  = 2;
maze_data_ver[9]  = 0;

maze_data_ver[10] = 2;
maze_data_ver[11] = 0;
maze_data_ver[12] = 2;
maze_data_ver[13] = 2;
maze_data_ver[14] = 0;


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


//guard tasks
global.tutorial_task[10] = 0; // total miss diode
global.tutorial_task[11] = 0; // near diode
global.tutorial_task[12] = 0; // direct hit diode
global.tutorial_task[13] = 0; // completed task
