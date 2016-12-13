image_xscale = 4;
image_yscale = 4;


//animation moving forward or backwards
if (global.player_last_dir == 0) {
    //backward speed
    image_speed = -0.2;
} else {
    //forward speed
    image_speed = 0.2;
}


//What did the player see before moving
//And which way did the player walk from there
switch (global.player_view_id_old) {
    case 0:
        //last pic had ID 0
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_00_entry;
            image_index = image_number - 1;
        } else {
            if (global.player_last_dir == 1) {
                sprite_index = spr_vent_00_return_right;
            } else {
                sprite_index = spr_vent_00_return_left;
            }
        }
        break;
        
    case 1:
        //last pic had ID 1
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_01_entry;
            image_index = image_number - 1;
        } else {
            if (global.player_return) {
                sprite_index = spr_vent_01_return;
            } else {
                sprite_index = spr_vent_01_exit_left;
            }
        }
        break;
        
    case 2:
        //last pic had ID 2
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_02_entry;
            image_index = image_number - 1;
        } else {
            if (global.player_return) {
                if (global.player_last_dir == 1) {
                    sprite_index = spr_vent_02_return_right;
                } else {
                    sprite_index = spr_vent_02_return_left;
                }
            } else {
                sprite_index = spr_vent_02_exit;
            }
        }
        break;
        
    case 3:
        //last pic had ID 3
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_03_entry;
            image_index = image_number - 1;
        } else {
            if (global.player_return) {
                sprite_index = spr_vent_03_return;
            } else {
                if (global.player_last_dir == 2) {
                    sprite_index = spr_vent_03_exit_straigth;
                } else if (global.player_last_dir == 3) {
                    sprite_index = spr_vent_03_exit_left;
                }
            }
        }
        break;
        
    case 4:
        //last pic had ID 4
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_04_entry;
            image_index = image_number - 1;
        } else {
            if (global.player_return) {
                sprite_index = spr_vent_04_return;
            } else {
                sprite_index = spr_vent_04_exit_right;
            }
        }
        break;
        
    case 5:
        //last pic had ID 5
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_05_entry;
            image_index = image_number - 1;
        } else {
            if (global.player_return) {
                sprite_index = spr_vent_05_return;
            } else {
                if (global.player_last_dir == 1) {
                    sprite_index = spr_vent_05_exit_right;
                } else if (global.player_last_dir == 3) {
                    sprite_index = spr_vent_05_exit_left;
                }
            }
        }
        break;
        
    case 6:
        //last pic had ID 6
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_06_entry;
            image_index = image_number - 1;
        } else {
            if (global.player_return) {
                sprite_index = spr_vent_06_return;
            } else {
                if (global.player_last_dir == 1) {
                    sprite_index = spr_vent_06_exit_right;
                } else if (global.player_last_dir == 2) {
                    sprite_index = spr_vent_06_exit_straigth;
                }
            }
        }
        break;
        
    case 7:
        //last pic had ID 7
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_07_entry;
            image_index = image_number - 1;
        } else {
            if (global.player_return) {
                sprite_index = spr_vent_07_return;
            } else {
                if (global.player_last_dir == 1) {
                    sprite_index = spr_vent_07_exit_right;
                } else if (global.player_last_dir == 2) {
                    sprite_index = spr_vent_07_exit_straigth;
                } else if (global.player_last_dir == 3) {
                    sprite_index = spr_vent_07_exit_left;
                }
            }
        }
        break;
        
    case 8:
        //last pic had ID 8
        if (global.player_last_dir == 0) {
            sprite_index = spr_vent_08_entry;
            image_index = image_number - 1;
        } else {
            if (global.player_return) {
//MISSING!!!
                if (global.player_last_dir == 1) {
                    sprite_index = spr_vent_00_return_right;
                } else {
                    sprite_index = spr_vent_00_return_left;
                }
            } else {
                sprite_index = spr_vent_08_exit;
            }
        }
        break;
}

