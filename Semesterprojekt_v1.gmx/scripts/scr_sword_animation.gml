///sword_animation

//animation speed control (1 = roomspeed)
//var image_speed = 0.2;
switch (global.sword_ani_id)    //get sword_ani_id and compare to player_view_id for drawing proper animation
    {
    case 0: draw_sprite(spr_sword_0, 0, spr_x, spr_y)           //no animation
        break;
    case 1: draw_sprite(spr_sword_0, all, spr_x, spr_y)         //position 1 - closest
        break;
    case 2: if  (global.player_view_id != 8)                    //position 2 - middle
                {draw_sprite(spr_sword_1, all, spr_x, spr_y)} 
        break;
    case 3: if (global.player_view_id == 2 ||                   //position 3 - farthest
                global.player_view_id == 3 ||
                global.player_view_id == 6 ||
                global.player_view_id == 7)
                {draw_sprite(spr_sword_2, all, spr_x, spr_y)} 
        break;
    default: draw_sprite(spr_sword_0, 0, spr_x, spr_y);         //When no animation is needed or sword_ani_id is invalid
    }

    
    
//draw_sprite(spr_nightvision, 0, spr_x, spr_y);
//draw_sprite(spr_security_monitor_border, 0, 0, 0);  //draw sprite for security screen border
    
/*      //play sound for sword
if global.sword_ani_id != 0
    {
    sound_play();
    }
    
*/
