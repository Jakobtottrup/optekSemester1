//place buttons on screen
var i;

//for vertical, set start pos
y = cpu_y + cpu_offset_y;
x = cpu_x - cpu_button_offset;
//create button and move to next pos
for (i=0; i<maze_height; i++) {
    instance_create(x, y, obj_button_red_jvt);
    
    y += global.maze_steplength*2;
}


//for horizontal
y = cpu_y + cpu_height + cpu_button_offset;
x = cpu_x + cpu_offset_x;

for (i=0; i<maze_width; i++) {
    instance_create(x, y, obj_button_red_vertical);
    x += global.maze_steplength*2;
}

