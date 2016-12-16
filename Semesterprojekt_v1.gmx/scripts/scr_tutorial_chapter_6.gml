/*
Indhold:

Vagten har adgang til at trykke på knapperne.
Han får opgaver der skal løses
 - lyt langt fra tyven
 - lyt i nærheden af tyven
 - lyt direkte på tyven

både vertikale og horisontale knapper skal bruges
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
 //** Chapter 6 **//
//***************//

if (tutorial_step > 10 && tutorial_step < 100) {
    draw_text(50, 400, "Bla bla listen to player");
}




//END THIS CHAPTER
if (tutorial_step > 140) {
    //next chapter
    global.tutorial_state = 7;
    tutorial_step = 0;
}
