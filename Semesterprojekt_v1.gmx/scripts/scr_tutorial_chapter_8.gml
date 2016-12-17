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
text_center = 330;

if (tutorial_step > 10 && tutorial_step < 130) {
    draw_text(text_center, 400, "The security guard is listening!#Use your hacking device#to disable his computer!");
}

if (tutorial_step > 140 && /*tutorial_step < 270*/ !keyboard_check(vk_space) && !instance_exists(obj_PDA_controller)) { 
    draw_text(text_center, 875, "Press <space> to bring up the PDA");
    PDA_spawn = true;
}


if (instance_exists(obj_PDA) && computer_hacked == false) {
    if (tutorial_step > 30 && tutorial_step < 120) {
       draw_text(text_center, 300, "Use the arrow keys#to catch all the#papers within the time!");
    }
    if (tutorial_step > 130 && tutorial_step < 420) {
       draw_text(text_center, 400, "If you complete the task,#the security guards computer#will be disabled for a short period");
    }
    if (tutorial_step > 440 && tutorial_step < 470) {
       draw_text(text_center+40, 400, "Ready?");
    }
    if (tutorial_step > 480 && tutorial_step < 510) {
       draw_text(text_center+40, 400, "Set!");
    }
    if (tutorial_step > 515 && tutorial_step < 530) {
        draw_text(text_center+40, 400, "Go!");
    }
    if (tutorial_step > 535 && tutorial_step < 550) {
        global.PDA_game_freeze = false;
    }
    if (instance_exists(obj_monitor_bluescreen) && PDA_spawn == true) {
        computer_hacked = true;
        draw_text(text_center, 400, "Congratulations!#You've disabled the guards computer")
    }    
}













//END THIS CHAPTER
if (tutorial_step > 1500) {
    //next chapter
    global.tutorial_state = 10;
    tutorial_step = 0;
}

