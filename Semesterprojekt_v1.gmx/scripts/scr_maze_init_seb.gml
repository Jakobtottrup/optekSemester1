//this script sets all variables needed to build and place the maze

//world size - paths horizontaly + vertically
maze_width = global.customize_grid_x;  //horizontal paths  |  |  |
maze_height = global.customize_grid_y; //vertical paths     -- --

//security screen size
cpu_width = 900;
cpu_height = 700;

cpu_x = 850;
cpu_y = 150;

cpu_offset_x = 0;
cpu_offset_y = 0;

cpu_button_offset = 80;

global.player_view_id = 0;
global.sword_ani_id = 0;

//lots of comments because it looks nice
    randomize(); //use new seed for every run
scr_maze_generate_seb()

//more comments
