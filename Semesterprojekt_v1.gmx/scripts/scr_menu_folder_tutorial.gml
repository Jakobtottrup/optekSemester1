
if (folder_touch_tutorial) {
    if (y > (global.menu_folder_y[1] - global.menu_folder_move_max)) {
        y -= global.menu_folder_move_speed;
    }
} else {
    if (y < global.menu_folder_y[1]) {
        y += global.menu_folder_move_speed;
    }
}
