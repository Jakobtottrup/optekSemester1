//for horizontal

var i,j;


//set start y
y = cpu_y + cpu_offset_y;
for (j=0; j<maze_height; j++) {
    //set start x
    x = cpu_x + cpu_offset_x + global.maze_steplength;
    for (i=1; i<maze_width; i++) {
        //place all horizontal pieces
        instance_create(x, y, obj_maze_hor_seb);
        x += global.maze_steplength*2;
    }
    y += global.maze_steplength*2;
}





//for vertical

//set start y
y = cpu_y + cpu_offset_y + global.maze_steplength;
for (j=1; j<maze_height; j++) {
    //set start x
    x = cpu_x + cpu_offset_x;
    for (i=0; i<maze_width; i++) {
        //place all vertical pieces
        instance_create(x, y, obj_maze_ver_seb);
        x += global.maze_steplength*2;
    }
    y += global.maze_steplength*2;
}
