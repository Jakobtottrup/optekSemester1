if (global.permission_move) {
    if (global.nightvision_mode == 0) {
        global.nightvision_mode = 1;
        audio_play_sound(snd_nightvision_activate, 1, false);
        
        //if tutorial is in chapter 2
        if (global.tutorial_state == 2) {
            //and the current mission is number 0
            if (global.tutorial_task[5] == 0) {
                //and the task needs more to be finished
                if (global.tutorial_task[4] < 100) {
                    //add more to nightvision task
                    global.tutorial_task[4] += 100/3;
                }
            }
        }
    } else {
        global.nightvision_mode = 0;
    }
}

