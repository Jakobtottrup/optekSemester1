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
    audio_sound_gain(snd_tutorial_music, 0.6, 0);
}

//loop "close one door"
if (global.tutorial_task[5] == 0) {
    if (tutorial_step > 550 && tutorial_step < 1000) {
        tutorial_step = 150;
    }
}

//continue after one door is closed
if (global.tutorial_task[5] == 1) {
    if (tutorial_step < 1000) {
        tutorial_step = 1000;
    }
}

//loop "close both doors"
if (global.tutorial_task[5] == 1) {
    if (tutorial_step > 1900 && tutorial_step < 2000) {
        tutorial_step = 1300;
    }
}

//continue after both doors are closed
if (global.laser_door_amount > 1) {
    if (tutorial_step < 2000) {
        tutorial_step = 2000;
    }
}

  //***************//
 //** Chapter 7 **//
//***************//

draw_set_font(tuto_fnt_guard);
draw_set_color(tuto_col_guard);

draw_set_halign(fa_center);



//press one door
if (tutorial_step > 40 && tutorial_step < 150) {
    draw_text(340, 300, "The gray box is a laser door");
}

if (tutorial_step > 120 && tutorial_step < 300) {
    draw_text(340, 360, "Press the door to close it");
}

if (tutorial_step > 350 && tutorial_step < 500) {
    draw_text(340, 360, "Use the mouse cursor to#press the door");
}

//first door pressed
if (tutorial_step > 1040 && tutorial_step < 1300) {
    draw_text(340, 300, "Do you see how the#thief gets blinded");
}

if (tutorial_step > 1200 && tutorial_step < 1300) {
    draw_text(340, 460, "Nightvision and lasers#doesn't work well together");
}

if (tutorial_step == 1250) {
    //spawn door behind player
    instance_create(cpu_x + cpu_offset_x + (global.maze_steplength * 8),
                    cpu_y + cpu_offset_y + (global.maze_steplength * 4),
                    obj_door_open);
}

//use both doors
if (tutorial_step > 1350 && tutorial_step < 1500) {
    draw_text(340, 300, "Now lock him in using#both doors at once");
}

if (tutorial_step > 1550 && tutorial_step < 1700) {
    draw_text(340, 300, "Close both doors at once");
}

if (tutorial_step > 1550 && tutorial_step < 1700) {
    draw_text(340, 300, "Close both doors at once");
}

if (tutorial_step > 1750 && tutorial_step < 1900) {
    draw_text(340, 300, "Use your mouse to close both doors");
}

//both doors closed
if (tutorial_step > 2030 && tutorial_step < 2100) {
    draw_text(340, 300, "He got nowhere to run!");
}

if (tutorial_step == 2050) {
    global.nightvision_mode = false;
}




//END THIS CHAPTER
if (tutorial_step > 2100) {
    //next chapter
    global.tutorial_state = 8;
    tutorial_step = 0;
}
