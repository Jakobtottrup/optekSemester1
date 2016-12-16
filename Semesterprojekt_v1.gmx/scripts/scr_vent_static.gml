global.permission_pda = true;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;

switch (global.player_view_id) {
    case 0:
        //view has ID 0
        sprite_index = spr_vent_00_return_right;
        break;
        
    case 1:
        //view has ID 1
        sprite_index = spr_vent_01_exit_left;
        break;
        
    case 2:
        //view has ID 2
        sprite_index = spr_vent_02_exit;
        break;
        
    case 3:
        //view has ID 3
        sprite_index = spr_vent_03_exit_straigth;
        break;
        
    case 4:
        //view has ID 4
        sprite_index = spr_vent_04_exit_right;
        break;
        
    case 5:
        //view has ID 5
        sprite_index = spr_vent_05_exit_right;
        break;
        
    case 6:
        //view has ID 6
        sprite_index = spr_vent_06_exit_straigth;
        break;
        
    case 7:
        //view has ID 7
        sprite_index = spr_vent_07_exit_straigth;
        break;
        
    case 8:
        //view has ID 8
        sprite_index = spr_vent_08_exit;
        break;
}
