
if (folder_touch_start) {
    if (y > (global.menu_folder_y[0] - global.menu_folder_move_max)) {
        y -= global.menu_folder_move_speed;
    }
} else {
    if (y < global.menu_folder_y[0]) {
        y += global.menu_folder_move_speed;
    }
}
