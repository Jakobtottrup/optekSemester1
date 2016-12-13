
draw_set_font(fnt_testfont);
draw_set_halign(fa_left);
draw_set_color(c_lime);

//draw maze build data
for (i = 0; i < ((maze_width*2)-1); i++) {
    for (j = 0; j < ((maze_height*2)-1); j++) {
        if (maze_gen_data[i, j] != 0) {
            if (maze_gen_data[i, j] == 2) {
                draw_set_color(c_lime);
            } else {
                draw_set_color(c_red);
            }
            draw_text(24*i, 30*j, string(maze_gen_data[i, j]));
        }
    }
}



draw_set_color(c_lime);

//draw maze distances
for (i = 0; i < ((maze_width*2)-1); i++) {
    for (j = 0; j < ((maze_height*2)-1); j++) {
        //if the value is not infinite
        if (maze_dist_data[i, j] != -1) {
            draw_text(45*i, 35*j + 280, string(maze_dist_data[i, j]));
        }
    }
}

//draw distances
draw_text(0, 600, "longest distance:  " + string(maze_longest_distance));
draw_text(0, 635, "shortest accepted: " + string(maze_shortest_distance));

