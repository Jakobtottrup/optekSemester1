//script for drawing player_view_id sprite on level
//place sprite correct
var spr_x = (700/2)-(1080/2);   //horizontal position
var spr_y = 0;                  //vertical position

x = spr_x;
y = spr_y;

//var player_view_id;
//player_view_id = 8;

switch (global.player_view_id)  //get player_view_id and draw proper sprite
    {
    case 0: draw_sprite(spr_vent_00, 0, spr_x, spr_y)   break;  //dead end
    case 1: draw_sprite(spr_vent_01, 0, spr_x, spr_y)   break;  //left
    case 2: draw_sprite(spr_vent_02, 0, spr_x, spr_y)   break;  //forward
    case 3: draw_sprite(spr_vent_03, 0, spr_x, spr_y)   break;  //forward, left
    case 4: draw_sprite(spr_vent_04, 0, spr_x, spr_y)   break;  //right
    case 5: draw_sprite(spr_vent_05, 0, spr_x, spr_y)   break;  //left, right
    case 6: draw_sprite(spr_vent_06, 0, spr_x, spr_y)   break;  //forward, right
    case 7: draw_sprite(spr_vent_07, 0, spr_x, spr_y)   break;  //left, forward, right
    case 8: draw_sprite(spr_vent_08, 0, spr_x, spr_y)   break;  //finish
    default: draw_text(spr_x, spr_y, "player_view_id not recognized");  //When player_view_id is invald
    }

draw_sprite(spr_security_monitor_border, 0, 0, 0);
