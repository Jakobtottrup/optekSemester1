//control player_view_id animations
image_total = floor(sprite_get_number(image_index)); //return number of subimages from sprite

/*global.anim_index = 0;

obj_control_draw_view_cs.image_index = global.anim_index;

*/




/*
image_index = all;  //start animation
if(image_index > image_total - 1)
    {
    image_index = image_total - 1;
    image_speed = 0;
}
*/


var i;
if(anim_end == true) {
    for(i=0; i<image_total; i++) {
    //global.player_movement = false;     //disable player movement while animation is running
    image_index++;
    }
}
else {
    image_index = 0;
    global.player_movement = true;      //enable player movement
}

/*
repeat(10) {
image_index = image_index+1;
alarm[0] = (room_speed*10);
scr_draw_view_cs(image_index);
}


/*
//if animation is active, disable player movement
if(image_speed != 0) { global.player_movement = false; }
else { global.player_movement = true; }   
*/


