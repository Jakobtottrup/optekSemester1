
global.tuto_running = true;

maze_width = 5;
maze_height = 4;

//Plays song when tutorial starts//
audio_play_sound(snd_tutorial_music,1,true);

//own timeline step count
tutorial_step = 0;

  //********************//
 //** color and font **//
//********************//

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

//pda
tuto_col_pda = c_white;
tuto_fnt_pda = fnt_tutorial_pda;









//chapter 8
global.PDA_game_freeze = true;
computer_hacked = false;
PDA_spawn = false;
finish_chapter8 = false;


scr_tutorial_maze_data();


//reset tutorial tasks
global.tutorial_task[0] = 0; //move forward
global.tutorial_task[1] = 0; //turn
global.tutorial_task[2] = 0; //move back 
global.tutorial_task[3] = 0; //turn around

global.tutorial_task[4] = 0; //nightvision
global.tutorial_task[5] = 0; //current mission state

global.tutorial_task[6] = 0; //slow move forward
global.tutorial_task[7] = 0; //slow turn
global.tutorial_task[8] = 0; //slow move back
global.tutorial_task[9] = 0; //slow turn around


//guard tasks
global.tutorial_task[10] = 0; // total miss diode
global.tutorial_task[11] = 0; // near diode
global.tutorial_task[12] = 0; // direct hit diode
global.tutorial_task[13] = 0; // completed task


global.tutorial_task[14] = 0; //slow move nigthvision
