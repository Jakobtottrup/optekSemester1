/*
Indhold:

Vagten kan ikke bevæge sig.
Han skal introduceres for at kunne dræbe.
Han skal have forklaret konsekvenserne ved ikke at ramme
og hvordan han "tjener respekt" til at måtte ødelægge mere
*/


/*
Template - sig noget fra START til STOP
Husk at ændre starten af næste kapitel til EFTER din sidste sætning



if (tutorial_step > START && tutorial_step < STOP) {
    draw_text(X, Y, "Bla bla");
}

*/

//Husk eventuelle 'afsnits'-noter


  //****************//
 //** Chapter 10 **//
//****************//

if (tutorial_step > 10 && tutorial_step < 100) {
    draw_text(50, 400, "Bla bla kill button");
}




//END THIS CHAPTER
if (tutorial_step > 140) {
    //next chapter
    global.tutorial_state = 11;
    tutorial_step = 0;
}
