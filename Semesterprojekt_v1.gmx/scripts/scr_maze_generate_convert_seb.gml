var i, con_ver, con_hor;
maze_data_hor[0] = 0;
maze_data_ver[0] = 0;





//horizontal
i = 0;
for (con_ver = 0; con_ver < maze_height; con_ver += 1) {
    for (con_hor = 0; con_hor < maze_width - 1; con_hor += 1) {
        maze_data_hor[i] = maze_gen_data[(con_hor*2)+1, con_ver*2];
        i++;
    }
}

//vertical
i = 0;
for (con_ver = 0; con_ver < maze_height-1; con_ver += 1) {
    for (con_hor = 0; con_hor < maze_width; con_hor += 1) {
        maze_data_ver[i] = maze_gen_data[con_hor*2, (con_ver*2)+1];
        i++;
    }
}




