/*
Script used to increment maze generation data whenever thief succesfully finds an exit.


Called in obj_level_generator create event
*/

//increments x and y grid size
global.customize_grid_x++;
global.customize_grid_y++;

//20% chance to increment number of goals by 1
if random(10) >= 8{
    global.custom_num_goal++;
}

//20% chance to increment number of laser grids by 1
if random(10) >= 8{
    global.custom_num_door++;
}
