///DRAW NIGHTVISION
draw_set_font(font_text_NV);

if (global.player_dead == false) {
    if (global.nightvision_mode == 1 && instance_exists(obj_player_seb)) {
        scr_NV_graphic(); //draw cursor overlay
        scr_draw_binary_NV();   //draw binary number overlay
        draw_sprite(spr_nightvision, 0, (350-540), 0);
        /*if (global.player_view_door == true && !instance_exists(obj_flashbang)) {
            instance_create(0, 0, obj_flashbang);
    }*/


    } else {
        draw_set_colour(c_black)
        draw_set_alpha(global.vent_blend) //sets alpha blend/opacity 
        draw_rectangle(0, 0, 800, room_height, false)
        draw_set_alpha(1) //resets opacity
        if (instance_exists(obj_NV_cursor_vert)) { //destroy curser when nightvision is disabled
            with(obj_NV_cursor_vert) {
                instance_destroy();
            }
            with(obj_NV_cursor_horiz) {
                instance_destroy();
            }           
        } 
    }
}
