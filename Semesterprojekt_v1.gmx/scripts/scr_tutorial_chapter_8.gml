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

if (tutorial_step > 10 && tutorial_step < 200) {
    draw_text(50, 400, "The security guard is watching! #Use your hacking device to disable his computer!");
}

if (tutorial_step > 210 && tutorial_step < 270) {
    draw_text(50, 400, "Press <space> to bring up the PDA");
}

if instance_exists(obj_PDA) {
    if (tutorial_step > 10 && tutorial_step < 150) {
       draw_text(50, 400, "Use the arrow keys to catch all the papers!");
    }
    if (tutorial_step > 160 && tutorial_step < 360) {
       draw_text(50, 400, "If you complete the task,#the security guards computer will be disabled for a short period");
    }
    
    
}





//END THIS CHAPTER
if (tutorial_step > 500) {
    //next chapter
    global.tutorial_state = 10;
    tutorial_step = 0;
}
