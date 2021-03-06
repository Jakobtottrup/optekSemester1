image_angle = direction;

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
player_move_down = false;


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


//Look for possible path forward-right, forward-forward, forward-left, return what you see
       
//forward
scr_player_move_function_up_seb();

//check for goal
if (position_meeting(x, y, obj_win)) {
    global.player_view_goal = true;
} else {
    global.player_view_goal = false;
}

//check for door in view
if (position_meeting(x, y, obj_door_closed)) {
    global.player_view_door = true;
} else {
    global.player_view_door = false;
}

//left
scr_player_move_function_left_seb();  

//check, +1
if (position_meeting(x, y, obj_maze_hor_seb) || position_meeting(x, y, obj_maze_ver_seb)) {
    player_view_count += 1; //vent goes to the left
    if (global.player_view_door == false) {
        player_move_left = true; //enable moving down
    }
}

//right, forward
scr_player_move_function_right_seb(); 
scr_player_move_function_up_seb();

//check, +2
if (position_meeting(x, y, obj_maze_hor_seb) || position_meeting(x, y, obj_maze_ver_seb)) {
    player_view_count += 2; //vent goes forward
    if (global.player_view_door == false) {
        player_move_up = true; //enable moving up
    }
}

//backwards, right
scr_player_move_function_down_seb(); 
scr_player_move_function_right_seb();

//check, +4
if (position_meeting(x, y, obj_maze_hor_seb) || position_meeting(x, y, obj_maze_ver_seb)) {
    player_view_count += 4; //vent goes to the right
    if (global.player_view_door == false) {
        player_move_right = true; //enable moving right
    }
}

//left, backwards
scr_player_move_function_left_seb(); 
scr_player_move_function_down_seb();  


global.player_view_id = player_view_count;

if (global.player_view_goal) {
    global.player_view_id = 8;
}










//Check if it is possible to move back from where you are

//backwards
scr_player_move_function_down_seb(); 

//check for door
if (position_meeting(x, y, obj_door_closed)) {
    global.player_view_door_back = true;
} else {
    global.player_view_door_back = false;
}

//backwards
scr_player_move_function_down_seb(); 

//check, backtrack
if (position_meeting(x, y, obj_maze_hor_seb) || position_meeting(x, y, obj_maze_ver_seb)) {
    if (global.player_view_door_back == false) {
        player_move_down = true; //enable moving down
    }
}

//2x forward
scr_player_move_function_up_seb();
scr_player_move_function_up_seb(); 






/*
Check if the door is shown correct
*/

//if player isn't moving
if (global.player_movement) {
    //if the player should see the door
    if (global.player_view_door) {
        //but the door doesn't exists
        if !instance_exists(obj_vent_door) {
            //spawn door
            instance_create(0, 0, obj_vent_door);
        }
    //if the player shouldn't see the door
    } else {
        //but the door exists
        if instance_exists(obj_vent_door) {
            //spawn door_remove
            instance_create(0, 0, obj_vent_door_remove);
        }
    }
}



