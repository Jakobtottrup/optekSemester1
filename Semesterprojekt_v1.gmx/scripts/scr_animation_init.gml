///this script sets all the virables used in the animations

//position for sprites
spr_x = (700/2)-(1080/2);   //horizontal position for sprites
spr_y = 0;                  //vertical position for sprites

x = spr_x;  //redefine x
y = spr_y;  //redefine y

global.last_move = 0;   //sets the last player input to "none"
global.player_movement = true;  //allows the player to move

image_speed = 0;


switch (global.player_view_id)  //get player_view_id and draw proper sprite
    {
    case 0: instance_change(obj_00_dead_end, true);              break;  //dead end
    case 1: instance_change(obj_01_left, true);                  break;  //left
    case 2: instance_change(obj_02_forward, true);               break;  //forward
    case 3: instance_change(obj_03_forward_left, true);          break;  //forward, left
    case 4: instance_change(obj_04_right, true);                 break;  //right
    case 5: instance_change(obj_05_left_right, true);            break;  //left, right
    case 6: instance_change(obj_06_forward_right, true);         break;  //forward, right
    case 7: instance_change(obj_07_forward_right_left, true);    break;  //forward, right, left   
    case 8: instance_change(obj_08_goal, true);                  break;  //finish
    default: draw_text(spr_x, spr_y, "player_view_id not recognized"); //When player_view_id is invald
    }
