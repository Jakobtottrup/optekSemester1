
//maze sektion top ver
x = cpu_x + cpu_offset_x + (global.maze_steplength * 8);
y = cpu_y + cpu_offset_y + (global.maze_steplength * 1);
instance_create(x, y, obj_maze_ver_seb);

//maze sektion mid ver
x = cpu_x + cpu_offset_x + (global.maze_steplength * 8);
y = cpu_y + cpu_offset_y + (global.maze_steplength * 3);
instance_create(x, y, obj_maze_ver_seb);
instance_create(x, y, obj_tuto_test_position);

//maze sektion bot ver
x = cpu_x + cpu_offset_x + (global.maze_steplength * 8);
y = cpu_y + cpu_offset_y + (global.maze_steplength * 5);
instance_create(x, y, obj_maze_ver_seb);

//maze sektion bot hor
x = cpu_x + cpu_offset_x + (global.maze_steplength * 7);
y = cpu_y + cpu_offset_y + (global.maze_steplength * 6);
instance_create(x, y, obj_maze_hor_seb);



//spawn goal
//maze sektion bot hor
x = cpu_x + cpu_offset_x + (global.maze_steplength * 8);
y = cpu_y + cpu_offset_y;
instance_create(x, y, obj_win);

