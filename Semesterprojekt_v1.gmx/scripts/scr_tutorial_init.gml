
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
tuto_col_nar = make_colour_rgb(0, 153, 0);
tuto_fnt_nar = fnt_tutorial;
tuto_fnt_nar_bold = fnt_tutorial_bold;

//thief
tuto_col_player = c_red;
tuto_fnt_player = fnt_tutorial;
tuto_fnt_player_bold = fnt_tutorial_bold;

//guard
tuto_col_guard = make_colour_rgb(255, 128, 0);
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
blink_existed = false;
player_hit = false;
guard_dead = false;


scr_tutorial_maze_data();

scr_tutorial_tasks_init();

