


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
                            global.tutorial_task[5] = 1;
                            
                            //continue tutorial
                            global.tuto_running = true;
                            
                        }
                    }
                }
            }
        }
    }
}



