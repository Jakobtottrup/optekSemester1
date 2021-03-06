
arrow_center_x = 326;
arrow_center_y = 1000;

//image_xscale = 0.2;
//image_yscale = 0.2;

//draw_sprite(sprite, subimg, x, y);

//if nightvision is activated
if (global.nightvision_mode) {
    //draw direction arrows
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
            draw_sprite(spr_vent_arrow_up, 0, arrow_center_x, arrow_center_y - 60);
        } else {
            draw_sprite(spr_vent_arrow_up, 1, arrow_center_x, arrow_center_y - 60);
        }
        
        if (player_move_down) {
            draw_sprite(spr_vent_arrow_down, 0, arrow_center_x, arrow_center_y);
        } else {
            draw_sprite(spr_vent_arrow_down, 1, arrow_center_x, arrow_center_y);
        }
    } else {
        draw_sprite(spr_vent_arrow_right, 1, arrow_center_x + 80, arrow_center_y);
        draw_sprite(spr_vent_arrow_left, 1, arrow_center_x - 80, arrow_center_y);
        draw_sprite(spr_vent_arrow_up, 1, arrow_center_x, arrow_center_y - 60);
        draw_sprite(spr_vent_arrow_down, 1, arrow_center_x, arrow_center_y);
    }
}


//draw_self();
if (global.player_dead) {
    image_index = 1;
} else {
    image_index = 0;
}

//draw player in tutorial
if (global.tutorial_state > 0 || global.player_dead) {
    draw_self();
}



