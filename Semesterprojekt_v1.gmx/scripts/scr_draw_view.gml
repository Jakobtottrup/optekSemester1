//draw player_view_id sprite on level


/*
switch (global.player_view_id)  //get player_view_id and draw proper sprite
    {
    case 0: instance_change(obj_dead_end, true);              break;  //dead end
    case 1: instance_change(obj_left, true);                  break;  //left
    case 2: instance_change(obj_forward, true);               break;  //forward
    case 3: instance_change(obj_forward_left, true);          break;  //forward, left
    case 4: instance_change(obj_right, true);                 break;  //right
    case 5: instance_change(obj_left_right, true);            break;  //left, right
    case 6: instance_change(obj_forward_right, true);         break;  //forward, right
    case 7: instance_change(obj_forward_right_left, true);    break;  //forward, right, left   
    case 8: instance_change(obj_goal, true);                  break;  //finish
    default: draw_text(spr_x, spr_y, "player_view_id not recognized");  //When player_view_id is invald
    }

if (instance_exists(inst)) {
    instance_destroy();
}
*/


if(global.player_moving == true)
{    
    //dead end
    if(global.player_view_id == 0) {
        //instance_create(spr_x, spr_y, obj_00_entry);
        instance_change(obj_00_entry, true);
    }
        
    //left
    if(global.player_view_id == 1) {
        //instance_create(spr_x, spr_y, obj_01_entry);
        instance_change(obj_01_entry, true);
    }
        
    //forward
    if(global.player_view_id == 2) {
        //instance_create(spr_x, spr_y, obj_02_entry);
        instance_change(obj_02_entry, true);
    }
        
    //forward, left
    if(global.player_view_id == 3) {
        //instance_create(spr_x, spr_y, obj_03_entry);
        instance_change(obj_03_entry, true);
    }
      
    //right
    if(global.player_view_id == 4) {
        //instance_create(spr_x, spr_y, obj_04_entry);
        instance_change(obj_04_entry, true);
    }
        
    //right, left
    if(global.player_view_id == 5) {
        //instance_create(spr_x, spr_y, obj_05_entry);
        instance_change(obj_05_entry, true);
    }
       
    //forward, right
    if(global.player_view_id == 6) {
        //instance_create(spr_x, spr_y, obj_06_entry);
        instance_change(obj_06_entry, true);
    }
        
    //forward, right, left
    if(global.player_view_id == 7) {
        //instance_create(spr_x, spr_y, obj_07_entry);
        instance_change(obj_07_entry, true);
    }
        
    //finish
    if(global.player_view_id == 8) {
        //instance_create(spr_x, spr_y, obj_08_entry);
        instance_change(obj_08_entry, true);
    }
}

///////last_move values////////
//neutral   (0)
//forward   (1)
//left      (2)
//right     (3)
//backwards (4)

