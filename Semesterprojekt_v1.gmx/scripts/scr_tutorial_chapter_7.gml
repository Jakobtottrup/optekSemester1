/*
Indhold:

Vagten har adgang til at trykke på dørene.
Der skal forklares, hvorfor dørene løber ud.
Han skal ende med at have døre lukket omkring spilleren
*/


/*
Template - sig noget fra START til STOP
Husk at ændre starten af næste kapitel til EFTER din sidste sætning



if (tutorial_step > START && tutorial_step < STOP) {
    draw_text(X, Y, "Bla bla");
}

*/

//Husk eventuelle 'afsnits'-noter

//start chapter
if (tutorial_step == 0) {
    //init
    //spawn door in front of player
    instance_create(cpu_x + cpu_offset_x + (global.maze_steplength * 8),
                    cpu_y + cpu_offset_y + (global.maze_steplength * 2),
                    obj_door_open);
    //reset task mamager
    global.tutorial_task[5] = 0;
    //turn on nightvision
    global.nightvision_mode = true;
}

if (global.tutorial_task[5] == 0) {
    if (tutorial_step > 550 && tutorial_step < 1000) {
        tutorial_step = 150;
    }
}






  //***************//
 //** Chapter 7 **//
//***************//

draw_set_font(tuto_fnt_guard);
draw_set_color(tuto_col_guard);

draw_set_halign(fa_center);




if (tutorial_step > 40 && tutorial_step < 150) {
    draw_text(300, 300, "The gray box is a laser door");
}

if (tutorial_step > 120 && tutorial_step < 300) {
    draw_text(300, 360, "Press the door to close it");
}

if (tutorial_step > 350 && tutorial_step < 500) {
    draw_text(300, 360, "Use the mouse cursor to#press the door");
}







//END THIS CHAPTER
if (tutorial_step > 10000) {
    //next chapter
    global.tutorial_state = 8;
    tutorial_step = 0;
}
