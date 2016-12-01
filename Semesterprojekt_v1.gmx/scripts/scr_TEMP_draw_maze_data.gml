
var i;
for (i = 0; i < array_length_1d(maze_ends_coor_x); i++) {
    draw_text(0, 30*i, string(maze_ends_coor_x[i]) + ", " + string(maze_ends_coor_y[i]));
}

for (i = 0; i < array_length_1d(maze_goal_coor_x); i++) {
    draw_text(200, 30*i, string(maze_goal_coor_x[i]) + ", " + string(maze_goal_coor_y[i]));
}

