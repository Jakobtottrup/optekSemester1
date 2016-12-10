x = cpu_x + cpu_offset_x + (global.maze_steplength * 6);
y = cpu_y + cpu_offset_y + (global.maze_steplength * 6);
instance_create(x, y, obj_win);
