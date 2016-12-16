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


  //***************//
 //** Chapter 7 **//
//***************//

if (tutorial_step > 10 && tutorial_step < 100) {
    draw_text(50, 400, "Bla bla doors");
}




//END THIS CHAPTER
if (tutorial_step > 140) {
    //next chapter
    global.tutorial_state = 8;
    tutorial_step = 0;
}
