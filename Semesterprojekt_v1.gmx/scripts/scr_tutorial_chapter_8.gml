/*
Indhold:

Spilleren er omringet af laserdøre. Han skal lære at bruge PDA'en.
Derefter kan han gå frit rundt. Kapitlet stopper, når spilleren kan se målet
*/


/*
Template - sig noget fra START til STOP
Husk at ændre starten af næste kapitel til EFTER din sidste sætning



if (tutorial_step > START && tutorial_step < STOP) {
    draw_text(X, Y, "Bla bla");
}

*/

//Husk eventuelle 'afsnits'-noter


  //***************//
 //** Chapter 8 **//
//***************//

//global.PDA_game_freeze = true;
draw_set_colour(tuto_col_nar);
draw_set_font(tuto_fnt_nar);
draw_set_halign(fa_center)
text_center = 340;

if (tutorial_step > 10 && tutorial_step < 130) {
    draw_text(text_center, 400, "The security guard is listening!#Use your hacking device#to disable his computer!");
}

if (tutorial_step > 140 && !keyboard_check(vk_space) && !instance_exists(obj_PDA_controller) && tutorial_step < 300) { 
    draw_text(text_center, 875, "Press <space> to bring up the PDA");
    PDA_spawn = true;
    global.player_movement = false;
}

if (instance_exists(obj_PDA) && tutorial_step < 350) {
   draw_text_transformed(text_center+14, 450, "Use the arrow keys#to catch all the#papers within the time!", 0.75, 0.75, 0);
}
if (tutorial_step > 350 && tutorial_step < 490) {
   draw_text_transformed(text_center+14, 450, "If you complete the task,#the security guards computer#will be disabled for a short period", 0.75, 0.75, 0);
}
if (tutorial_step > 500 && tutorial_step < 530) {
   draw_text(text_center+30, 400, "Ready?");
}
if (tutorial_step > 530 && tutorial_step < 545) {
   draw_text(text_center+30, 400, "Set!");
}
if (tutorial_step > 545 && tutorial_step < 565) {
    draw_text(text_center+30, 400, "Go!");
}
if (tutorial_step > 570 && tutorial_step < 1000) {
    global.PDA_game_freeze = false;
    if (instance_exists(obj_monitor_bluescreen)) {
    computer_hacked = true;
    } else {
        computer_hacked = false;
    }
}

//if game lost - try again
if (global.PDA_game_freeze == false && computer_hacked == false && PDA_spawn == true) {
    if(!instance_exists(obj_PDA) && !instance_exists(obj_monitor_bluescreen)) {
        draw_text(text_center, 400, "Woops, bad luck! Try again!#Press the spacebar again")
    }
}

//when successful hack
if (computer_hacked == true && global.PDA_game_freeze == false) {
    draw_text(text_center, 400, "Congratulations!#You've disabled the guards computer#It is now rebooting,#and you have time to escape!")
    //global.tuto_running = false;
}

//END THIS CHAPTER
if (computer_hacked == true && global.bluescreen_exists == false) {
    //next chapter
    global.player_movement = true;
    global.tutorial_state = 10;
    tutorial_step = 0;
}
