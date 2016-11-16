///draw player_view_id sprite on level

global.last_move = 0;   //sets the last player input to "none"
global.player_movement = true;  //allows the player to move
anim_end = false;   //sets the animaiton end to 'false' - set 'true' if animation is on last subimage

/*
switch (global.player_view_id)  //get player_view_id and draw proper sprite
    {
    case 0: draw_sprite(spr_vent_00, 0, spr_x, spr_y);                 break;  //dead end
    case 1: draw_sprite(spr_vent_anim_01_left, all, spr_x, spr_y);     break;  //left
    case 2: draw_sprite(spr_vent_anim_02_straight, all, spr_x, spr_y); break;  //forward
    case 3: draw_sprite(spr_vent_anim_03_left, all, spr_x, spr_y);     break;  //forward, left
    case 4: draw_sprite(spr_vent_anim_04_right, all, spr_x, spr_y);    break;  //right
    case 5: draw_sprite(spr_vent_anim_05_left, all, spr_x, spr_y);     break;  //left, right
    case 6: draw_sprite(spr_vent_anim_06_right, all, spr_x, spr_y);    break;  //forward, right
    case 7: draw_sprite(spr_vent_anim_07_straight, all, spr_x, spr_y); break;  //forward, right, left   
    case 8: draw_sprite(spr_vent_08, 0, spr_x, spr_y);                 break;  //finish
    default: draw_text(spr_x, spr_y, "player_view_id not recognized");  //When player_view_id is invald
    }


if (timer < 0) {
    timer++;
    image_speed = 100;
}
*/

if (keyboard_check_pressed(vk_space)) {global.player_movement = true;}

//dead end
if(global.player_view_id == 0) {
    draw_sprite(spr_vent_00, 0, spr_x, spr_y);
}

//left
if(global.player_view_id == 1) {
    draw_sprite(spr_vent_anim_01_left, all, spr_x, spr_y);
}

//forward
if(global.player_view_id == 2) {
    draw_sprite(spr_vent_anim_02_straight, all, spr_x, spr_y);
}

//forward, left
if(global.player_view_id == 3) {
    draw_sprite(spr_vent_anim_03_straight, all, spr_x, spr_y);
}

//right
if(global.player_view_id == 4) {
    draw_sprite(spr_vent_anim_04_right, all, spr_x, spr_y);
}

//right, left
if(global.player_view_id == 5) {
    draw_sprite(spr_vent_anim_05_right, all, spr_x, spr_y);
}

//forward, right
if(global.player_view_id == 6) {
    draw_sprite(spr_vent_anim_06_straight, all, spr_x, spr_y);
    //draw_sprite(spr_vent_anim_06_right, image_index, spr_x, spr_y);
}

//forward, right, left
if(global.player_view_id == 7) {
    
    while(anim_end == false) {
    global.player_movement = true;
    for(i=0; i< 11; i++;){
    draw_sprite(spr_vent_anim_07_straight, i, spr_x, spr_y);
    }
    anim_end = true;
    }
    /*if(global.last_move == 1) {
    global.player_movement = false;
    draw_sprite(spr_vent_anim_07_straight, all, spr_x, spr_y);
    }
    if(global.last_move == 2) {
    global.player_movement = false;
    draw_sprite(spr_vent_anim_07_left, all, spr_x, spr_y);
    }
    if(global.last_move == 3) {
    global.player_movement = false;
    draw_sprite(spr_vent_anim_07_right, all, spr_x, spr_y);
    }*/
}

//finish
if(global.player_view_id == 8) {
    draw_sprite(spr_vent_08, 0, spr_x, spr_y);
}

//draw_sprite(spr_security_monitor_border, 0, spr_x+100, spr_y);


//neutral   (0)
//forward   (1)
//left      (2)
//right     (3)
//backwards (4)
