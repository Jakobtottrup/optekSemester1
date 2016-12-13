
image_xscale = 1;
image_yscale = 1;

if (global.player_last_dir == 0) {
    //backward speed
    image_speed = -0.4;
} else {
    //forward speed
    image_speed = 0.4;
}

if (global.player_last_dir == 0) {
    sprite_index = spr_vent_01_entry;
    image_index = image_number - 1;
} else {

}



switch (global.player_view_id) {
    case 0:
        //new pic has ID 0
        sprite_index = spr_vent_00_entry;
        break;
        
    case 1:
        //new pic has ID 1
        sprite_index = spr_vent_01_entry;
        break;
        
    case 2:
        //new pic has ID 2
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_02_exit;
            image_index = image_number - 1;
        } else {
            sprite_index = spr_vent_02_entry;
        }
        break;
        
    case 3:
        //new pic has ID 3
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_03_exit_straigth;
            image_index = image_number - 1;
        } else {
            sprite_index = spr_vent_03_entry;
        }
        break;
        
    case 4:
        //new pic has ID 4
        sprite_index = spr_vent_04_entry;
        break;
        
    case 5:
        //new pic has ID 5
        sprite_index = spr_vent_05_entry;
        break;
        
    case 6:
        //new pic has ID 6
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_06_exit_straigth;
            image_index = image_number - 1;
        } else {
            sprite_index = spr_vent_06_entry;
        }
        break;
        
    case 7:
        //new pic has ID 7
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_07_exit_straigth;
            image_index = image_number - 1;
        } else {
            sprite_index = spr_vent_07_entry;
        }
        break;
        
    case 8:
        //new pic has ID 8
        sprite_index = spr_vent_08_entry;
        break;
}
