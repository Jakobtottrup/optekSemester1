/*
Indhold:

Målene spawnes. Tyven skal gå derhen.
Kapitlet afsluttes når tyven står på en ønsket position.
Alle sætninger efter kapitlets afslutning ignoreres, så der kan bare fyldes på
ex. "led efter et mål"
    "Det skulle gerne være her et sted"
    "Kig efter en rist i gulvet"
*/

if (tutorial_step == 0) {
    scr_tutorial_spawn_goal();
}

/*
Template - sig noget fra START til STOP
Husk at ændre starten af næste kapitel til EFTER din sidste sætning



if (tutorial_step > START && tutorial_step < STOP) {
    draw_text(X, Y, "Bla bla");
}

*/

//Husk eventuelle 'afsnits'-noter


  //***************//
 //** Chapter 3 **//
//***************//

if (tutorial_step > 10 && tutorial_step < 100) {
    draw_text(50, 400, "Bla bla go to goal");
}




//END THIS CHAPTER
if (tutorial_step > 140) {
    //next chapter
    global.tutorial_state = 5;
    tutorial_step = 0;
}

