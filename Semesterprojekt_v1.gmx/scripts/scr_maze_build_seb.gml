//for horizontal

var i,j;       //counter for x, y
var h;         //counter for maze_data
var maze_bit;  //holder for char at pos in string


h = 1;
//set start y
y = cpu_y + cpu_offset_y;
for (j=0; j<maze_height; j++) {
    //set start x
    x = cpu_x + cpu_offset_x + global.maze_steplength;
    for (i=1; i<maze_width; i++) {
        //check if maze section is allowed here
        maze_bit = string_char_at(maze_data, h);
        if (maze_bit == string(1)) {
            //place all horizontal pieces
            instance_create(x, y, obj_maze_hor_seb);
        }
        h += 1;
        x += global.maze_steplength*2;
    }
    h += maze_width;
    y += global.maze_steplength*2;
}





//for vertical

h = (maze_width);
//set start y
y = cpu_y + cpu_offset_y + global.maze_steplength;
for (j=1; j<maze_height; j++) {
    //set start x
    x = cpu_x + cpu_offset_x;
    for (i=0; i<maze_width; i++) {
        //check if maze section is allowed here
        maze_bit = string_char_at(maze_data, h);
        if (maze_bit == string(1)) {
            //place all vertical pieces
            instance_create(x, y, obj_maze_ver_seb);
        }
        h += 1;
        x += global.maze_steplength*2;
    }
    h += (maze_width - 1);
    y += global.maze_steplength*2;
}
