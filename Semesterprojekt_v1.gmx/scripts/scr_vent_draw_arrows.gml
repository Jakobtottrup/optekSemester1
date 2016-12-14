
arrow_center_x = 300;
arrow_center_y = 500;

image_xscale = 2;
image_yscale = 2;

//draw_sprite(sprite, subimg, x, y);


if (global.player_movement) {
    if (player_move_right) {
        draw_sprite(spr_vent_arrow_right, 0, arrow_center_x + 80, arrow_center_y);
    } else {
        draw_sprite(spr_vent_arrow_return_right, 0, arrow_center_x + 80, arrow_center_y);
    }
    
    if (player_move_left) {
        draw_sprite(spr_vent_arrow_left, 0, arrow_center_x - 80, arrow_center_y);
    } else {
        draw_sprite(spr_vent_arrow_return_left, 0, arrow_center_x - 80, arrow_center_y);
    }
    
    if (player_move_up) {
        draw_sprite(spr_vent_arrow_up, 0, arrow_center_x, arrow_center_y - 80);
    } else {
        draw_sprite(spr_vent_arrow_up, 1, arrow_center_x, arrow_center_y - 80);
    }
    
    if (player_move_down) {
        draw_sprite(spr_vent_arrow_down, 0, arrow_center_x, arrow_center_y);
    } else {
        draw_sprite(spr_vent_arrow_down, 1, arrow_center_x, arrow_center_y);
    }
} else {
    draw_sprite(spr_vent_arrow_right, 1, arrow_center_x + 80, arrow_center_y);
    draw_sprite(spr_vent_arrow_left, 1, arrow_center_x - 80, arrow_center_y);
    draw_sprite(spr_vent_arrow_up, 1, arrow_center_x, arrow_center_y - 80);
    draw_sprite(spr_vent_arrow_down, 1, arrow_center_x, arrow_center_y);
}

