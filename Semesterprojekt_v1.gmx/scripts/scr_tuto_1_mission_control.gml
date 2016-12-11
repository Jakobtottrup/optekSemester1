  //**************//
 //** Tutorial **//
//**************//


//go to next mission when every task is finished
if (global.tutorial_state == 2) {
    //if first mission is active
    if (global.tutorial_task[5] == 0) {
        //check each mission task
        if (global.tutorial_task[0] > 99) {
            if (global.tutorial_task[1] > 99) {
                if (global.tutorial_task[2] > 99) {
                    if (global.tutorial_task[3] > 99) {
                        with (obj_tuto_1_control) {
                            //first mission is deactivated
                            global.tutorial_task[5] = 1
                            timeline_position = 1000;
                            timeline_running = true;
                        }
                    }
                }
            }
        }
    } else if (global.tutorial_task[5] == 1) {
        //if the player is not in a vent-ending
        if (global.player_view_id != 0) {
            //spawn goal in the vent-ending
            with (obj_tuto_1_control) {
                scr_tutorial_spawn_goal();
            }
            //next mission
            global.tutorial_task[5] = 2;
        }
    } else if (global.tutorial_task[5] == 2) {
        if (global.player_view_id == 8) {
            //disable movement
            global.tutorial_state = 1;
            //abort all missions
            global.tutorial_task[5] = 3;
            //continue story
            with (obj_tuto_1_control) {
                timeline_position = 2000;
                timeline_running = true;
            }
        }
    }
}
