/*
Indhold:

Tyven kan bevæge sig. Han får opgaver om bevægelse.
Han skal først lære at bruge nightvision.
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
    global.tuto_running = false;
}

for (i = 0; i < 4; i++) {
    if (global.tutorial_task[i] > global.tutorial_task[i+6]) {
        global.tutorial_task[i+6] += 2;
    }
}

draw_set_halign(fa_center);

  //***************//
 //** Chapter 2 **//
//***************//

draw_text(1300, 180, "Training mission");
    //draw_healthbar(left, top, right, bottom, amount, backcol, mincol, maxcol, direction, showback, showborder);
    
    draw_healthbar(1100, 300, 1500, 350, global.tutorial_task[6], c_black, c_red, c_green, 0, false, false);
draw_text(1300, 300, "Move forward");

    draw_healthbar(1100, 400, 1500, 450, global.tutorial_task[7], c_black, c_red, c_green, 0, false, false);
draw_text(1300, 400, "Change direction");
    
    draw_healthbar(1100, 500, 1500, 550, global.tutorial_task[8], c_black, c_red, c_green, 0, false, false);
draw_text(1300, 500, "Turn around");
    
    draw_healthbar(1100, 600, 1500, 650, global.tutorial_task[9], c_black, c_red, c_green, 0, false, false);
draw_text(1300, 600, "Move backwards");







//END THIS CHAPTER
if (tutorial_step > 140) {
    //next chapter
    global.tutorial_state = 3;
    tutorial_step = 0;
}

