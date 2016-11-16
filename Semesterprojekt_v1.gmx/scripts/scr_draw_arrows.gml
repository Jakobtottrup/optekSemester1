//draw arrows
x1 = 200;
y1 = 200;

x2 = 400;
y2 = 400;

depth = 20;

switch (global.player_view_id)  //get player_view_id and draw proper sprite
    {
    case 0: draw_sprite(spr_vent_00, 0, spr_x, spr_y);                 break;  //dead end
    case 1: draw_arrow(x1, y1, x2, y2, 50)     break;  //left
    case 2: draw_sprite(spr_vent_anim_02_straight, all, spr_x, spr_y); break;  //forward
    case 3: draw_sprite(spr_vent_anim_03_left, all, spr_x, spr_y);     break;  //forward, left
    case 4: draw_sprite(spr_vent_anim_04_right, all, spr_x, spr_y);    break;  //right
    case 5: draw_sprite(spr_vent_anim_05_left, all, spr_x, spr_y);     break;  //left, right
    case 6: draw_sprite(spr_vent_anim_06_right, all, spr_x, spr_y);    break;  //forward, right
    case 7: draw_sprite(spr_vent_anim_07_straight, all, spr_x, spr_y); break;  //forward, right, left   
    case 8: draw_sprite(spr_vent_08, 0, spr_x, spr_y);                 break;  //finish
    default: draw_text(spr_x, spr_y, "player_view_id not recognized");  //When player_view_id is invald
    }


