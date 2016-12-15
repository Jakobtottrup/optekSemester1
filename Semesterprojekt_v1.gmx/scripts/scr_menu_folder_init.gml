instance_create(0,0,obj_menu_controller);
global.folder_width = 1100;
global.folder_height = 100;

folder_left_offset = 80;
folder_top_offset = 120;
folder_sep_dist = 10;

folder_draw_offset = 20;

folder_move_max = 40;
folder_move_speed = 8;


for (i = 0; i < 6; i++) {
    //rest position
    global.folder_y[i] = (folder_top_offset + ((global.folder_height + folder_sep_dist)* i));
    
    //boolean for mouse hover
    global.folder_touch[i] = false;
    //moved distance from rest position
    folder_y_plus[i] = 0;
    
    //left offset
    global.folder_x[i] = ((room_width/2) + (folder_left_offset * i)) - 200;
}

//special case for the exit button
global.folder_x[5] -= 20;
global.folder_y[5] += 40;

global.tutorial_state = 0;

