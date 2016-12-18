/*
Indhold:

Intet tilladt
Dette kapitel er en pause imellem at spilleren ikke må bevæge sig, og vagten kommer
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

  //***************//
 //** Chapter 4 **//
//***************//

draw_set_colour(tuto_col_player);
draw_set_font(tuto_fnt_player);

draw_text(100, 700, "WATCH OUT!!#The guard is here..#Don't Move!");



//END THIS CHAPTER
    if (tutorial_step > 50) {
        //next chapter
        global.tutorial_state = 5;
        tutorial_step = 0;
    }

