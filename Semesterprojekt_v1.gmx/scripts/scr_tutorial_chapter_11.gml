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




//END THIS CHAPTER
if (tutorial_step > 140) {
    //next chapter
    global.tutorial_state = 12;
    tutorial_step = 0;
}
