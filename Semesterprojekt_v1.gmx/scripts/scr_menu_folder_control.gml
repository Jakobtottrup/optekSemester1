
//for each folder
for (i = 0; i < 6; i++) {
    //if mouse hover
    if (global.folder_touch[i]) {
        //if not fully risen
        if (folder_y_plus[i] < folder_move_max) {
            folder_y_plus[i] += folder_move_speed;
        }
    } else {
        if (folder_y_plus[i] > 0) {
            folder_y_plus[i] -= folder_move_speed;
        }
    }
}



