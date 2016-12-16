//this script sets all variables needed to build and place the maze

//world size - paths horizontaly + vertically
maze_width = global.customize_grid_x;  //horizontal paths  |  |  |
maze_height = global.customize_grid_y; //vertical paths     -- --
global.count_moves = 0;
//security screen size
cpu_width = 855;
cpu_height = 635;

cpu_x = 923;
cpu_y = 143;

cpu_offset_x = 0;
cpu_offset_y = 0;

cpu_button_offset = 60;

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


global.nightvision_mode = 0;

//laser doors
global.laser_door_life_span = 450;
global.laser_door_amount = 0;

//max number of goals
maze_num_goals = global.custom_num_goal;
//max number of doors
maze_num_doors = global.custom_num_door;
//percent extra paths
maze_extra_path_percent = 20;

//the top percent distances to choose from
//when choosing the player spawn point
spawn_min_dist_goal = 30; //   '/.


//this view adds an extra touch such as breathing and screenshake
global.player_actual_view_x   = 0;
global.player_actual_view_y   = 0;
global.player_actual_view_dir = 0;
global.shake_x = 0;
global.shake_y = 0;


//**** breathing ****//

//steps pr breath cycle
global.player_breath_cycle_steps = 60;
//fastest allowed breathing for exhausting //fewest steps pr cycle
player_breath_cycle_min = 20;
//slowest allowed breathing //max steps pr cycle
player_breath_cycle_max = 80;

//steps shorter cycle each movement - cost of moving
global.player_breath_move_cost = 15;
//steps added to breath length each step - breath slower if exhausted
player_breath_fitness = 0.08;
//variable for x value in sin() and cos() curves
player_breath_count = 0;



if (global.tutorial_state == 0) {

//start maze generation
scr_maze_generate_seb()


//init tutorial permissions
scr_tutorial_permissions();

} else {
    //load special cases for the tutorial
    scr_tutorial_init();
}

//set player_dead to false
global.player_dead = false;

