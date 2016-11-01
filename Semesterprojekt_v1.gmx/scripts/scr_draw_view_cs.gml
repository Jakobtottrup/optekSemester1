//draw player_view_id sprite on level

//place sprite correct
var spr_x = (700/2)-(1080/2);   //horizontal position
var spr_y = 0;                  //vertical position

var global.thief_x = spr_x;
var global.thief_y = spr_y;

x = spr_x;  //redefine x
y = spr_y;  //redefine y

switch (global.player_view_id)  //get player_view_id and draw proper sprite
    {
    case 0: draw_sprite(spr_vent_00, 0, spr_x, spr_y)   break;  //dead end
    case 1: draw_sprite(spr_vent_01, 0, spr_x, spr_y)   break;  //left
    case 2: draw_sprite(spr_vent_02, 0, spr_x, spr_y)   break;  //forward
    case 3: draw_sprite(spr_vent_03, 0, spr_x, spr_y)   break;  //forward, left
    case 4: draw_sprite(spr_vent_04, 0, spr_x, spr_y)   break;  //right
    case 5: draw_sprite(spr_vent_05, 0, spr_x, spr_y)   break;  //left, right
    case 6: draw_sprite(spr_vent_06, 0, spr_x, spr_y)   break;  //forward, right
    case 7: draw_sprite(spr_vent_07, 0, spr_x, spr_y)   break;  //forward, left, right
    case 8: draw_sprite(spr_vent_08, 0, spr_x, spr_y)   break;  //finish
    default: draw_text(spr_x, spr_y, "player_view_id not recognized");  //When player_view_id is invald
    }



    
// animation speed control (1 = roomspeed)
image_speed = 0.2;
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

draw_sprite(spr_nightvision, 0, spr_x, spr_y);
draw_sprite(spr_security_monitor_border, 0, 0, 0);  //draw sprite for security screen border
    
/*      //play sound for sword
if global.sword_ani_id != 0
    {
    sound_play();
    }
    
*/
