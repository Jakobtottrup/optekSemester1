image_angle = direction; // DELETE THIS // points sprite in direction

/*
cos(0)  = 1     sin(0)  = 0     dir(0)  = x + step, y + 0
cos(90) = 0     sin(90) = 1     dir(90) = x + 0,    y + step      - \
cos(180)= -1    sin(180)= 0     dir(180)= x - step, y + 0             - inverted, since y grows downwards
cos(270)= 0     sin(270)= -1    dir(270)= x + 0,    y - step      - /
*/


/*
game maker uses radians instead of degrees
    degrees to radians: 
    ((dir * pi) / 180)
*/

player_view_count = 0;

player_move_right = false;
player_move_left = false;
player_move_up = false;


/*
movement order
- forward   - check for goal
- left      - check for maze, +1
- right
- forward   - check for maze, +2
- backwards
- right     - check for maze, +4
- left
- backwards
*/


/*
functions
- forward -
x = x + (cos((direction * pi) / 180) * global.maze_steplength);
y = y - (sin((direction * pi) / 180) * global.maze_steplength); 

- backward -
x = x - (cos((direction * pi) / 180) * global.maze_steplength);
y = y + (sin((direction * pi) / 180) * global.maze_steplength); 

- right -
x = x + (cos(((direction - 90) * pi) / 180) * global.maze_steplength);
y = y - (sin(((direction - 90) * pi) / 180) * global.maze_steplength); 

- left -
x = x + (cos(((direction + 90) * pi) / 180) * global.maze_steplength);
y = y - (sin(((direction + 90) * pi) / 180) * global.maze_steplength); 

- check -
if (position_meeting(x, y, obj_maze_hor_seb) || position_meeting(x, y, obj_maze_ver_seb)) {}
*/


    /* ***             ***
       *** Actual Code *** 
       ***             *** */

       
//forward
x = x + (cos((direction * pi) / 180) * global.maze_steplength);
y = y - (sin((direction * pi) / 180) * global.maze_steplength); 

//check for goal

//left
x = x + (cos(((direction + 90) * pi) / 180) * global.maze_steplength);
y = y - (sin(((direction + 90) * pi) / 180) * global.maze_steplength); 

//check, +1
if (position_meeting(x, y, obj_maze_hor_seb) || position_meeting(x, y, obj_maze_ver_seb)) {
    player_view_count += 1;
    player_move_left = true; //enable moving down
}

//right
x = x + (cos(((direction - 90) * pi) / 180) * global.maze_steplength);
y = y - (sin(((direction - 90) * pi) / 180) * global.maze_steplength); 

//forward
x = x + (cos((direction * pi) / 180) * global.maze_steplength);
y = y - (sin((direction * pi) / 180) * global.maze_steplength); 

//check, +2
if (position_meeting(x, y, obj_maze_hor_seb) || position_meeting(x, y, obj_maze_ver_seb)) {
    player_view_count += 2;
    player_move_up = true; //enable moving up
}

//backwards
x = x - (cos((direction * pi) / 180) * global.maze_steplength);
y = y + (sin((direction * pi) / 180) * global.maze_steplength);

//right
x = x + (cos(((direction - 90) * pi) / 180) * global.maze_steplength);
y = y - (sin(((direction - 90) * pi) / 180) * global.maze_steplength); 

//check, +4
if (position_meeting(x, y, obj_maze_hor_seb) || position_meeting(x, y, obj_maze_ver_seb)) {
    player_view_count += 4;
    player_move_right = true; //enable moving right
}

//left
x = x + (cos(((direction + 90) * pi) / 180) * global.maze_steplength);
y = y - (sin(((direction + 90) * pi) / 180) * global.maze_steplength); 

//backwards
x = x - (cos((direction * pi) / 180) * global.maze_steplength);
y = y + (sin((direction * pi) / 180) * global.maze_steplength);



global.player_view_id = player_view_count;



