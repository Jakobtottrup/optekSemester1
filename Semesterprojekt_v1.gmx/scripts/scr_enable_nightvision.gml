if (global.permission_move) {
    if (global.nightvision_mode == 0) {
        global.nightvision_mode = 1;
        audio_play_sound(snd_nightvision_activate, 1, false);
    } else {
        global.nightvision_mode = 0;
    }
}

