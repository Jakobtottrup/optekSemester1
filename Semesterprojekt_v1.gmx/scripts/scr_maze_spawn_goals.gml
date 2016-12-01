
for (i = 0; i < array_length_1d(maze_goal_coor_x); i++) {
    x = cpu_x + cpu_offset_x + (global.maze_steplength * maze_goal_coor_x[i]);
    y = cpu_y + cpu_offset_y + (global.maze_steplength * maze_goal_coor_y[i]);
    instance_create(x, y, obj_win);
}



