///draw player_view_id sprite on level



switch (global.player_view_id)  //get player_view_id and draw proper sprite
    {
    case 0: instance_create(spr_x, spr_y, obj_00_dead_end);              break;  //dead end
    case 1: instance_create(spr_x, spr_y, obj_01_left);                  break;  //left
    case 2: instance_create(spr_x, spr_y, obj_02_forward);               break;  //forward
    case 3: instance_create(spr_x, spr_y, obj_03_forward_left);          break;  //forward, left
    case 4: instance_create(spr_x, spr_y, obj_04_right);                 break;  //right
    case 5: instance_create(spr_x, spr_y, obj_05_left_right);            break;  //left, right
    case 6: instance_create(spr_x, spr_y, obj_06_forward_right);         break;  //forward, right
    case 7: instance_create(spr_x, spr_y, obj_07_forward_right_left);    break;  //forward, right, left   
    case 8: instance_create(spr_x, spr_y, obj_08_goal);                  break;  //finish
    default: draw_text(spr_x, spr_y, "player_view_id not recognized");  //When player_view_id is invald
    }

///////last_move values////////
//neutral   (0)
//forward   (1)
//left      (2)
//right     (3)
//backwards (4)
