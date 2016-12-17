/*
Indhold:

Vagten skal dræbe spilleren
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
}

  //****************//
 //** Chapter 11 **//
//****************//

if (tutorial_step > 10 && tutorial_step < 100) {
    draw_text(50, 400, "Bla bla kill");
} 

if (tutorial_step > 100 && tutorial_step < 105) {
    draw_text(50, 400, "Bla bla kill");
    global.player_movement = false;
}

if (tutorial_step > 105 && (!instance_exists(obj_button_sword_blink_horiz) || !instance_exists(obj_button_sword_blink_vert)) )  {
    global.tuto_running = false; //pause tutorial
    if !instance_exists(obj_player_seb) {
        draw_text(50, 400, "You killed him!");
    }
} 


//END THIS CHAPTER
if (tutorial_step > 140) {
    //next chapter
    global.tutorial_state = 12;
    tutorial_step = 0;
}


draw_text(1000, 100, "Player alive "+string(instance_exists(obj_player_seb)));

