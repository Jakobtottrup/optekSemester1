var i, j;


y = 0;
for (j = 0; j < (maze_height * 2) - 1; j++) {
    x = 0;
    for (i = 0; i < (maze_width * 2) - 1; i++) {
        draw_text(x, y, maze_gen_data[i, j]);
        x += 40;
    }
    y += 40;
}


y += 80;
x = 0;
for (i = 0; i < (maze_width-1) * maze_height; i++) {
    draw_text(x, y, maze_data_hor[i]);
    x += 30;
}

y += 80;
x = 0;
for (i = 0; i < maze_width * (maze_height-1); i++) {
    draw_text(x, y, maze_data_ver[i]);
    x += 30;
}

