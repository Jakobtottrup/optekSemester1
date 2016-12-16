/*
Indhold:

Tyven kan ikke bevæge sig
Der forklares, hvorfor han er i skakten, og hvad hans formål er
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
 //** Chapter 1 **//
//***************//

if (tutorial_step > 10 && tutorial_step < 100) {
    draw_text(50, 400, "Bla bla thief info");
}

if (tutorial_step > 140 && tutorial_step < 180) {
    draw_text(50, 400, "hey");
}





//END THIS CHAPTER
if (tutorial_step > 200) {
    //next chapter
    global.tutorial_state = 2;
    tutorial_step = 0;
}


