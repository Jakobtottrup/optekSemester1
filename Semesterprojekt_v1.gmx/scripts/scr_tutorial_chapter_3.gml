/*
Indhold:

Målene spawnes. Tyven skal gå derhen.
Kapitlet afsluttes når tyven står på en ønsket position.
Alle sætninger efter kapitlets afslutning ignoreres, så der kan bare fyldes på
ex. "led efter et mål"
    "Det skulle gerne være her et sted"
    "Kig efter en rist i gulvet"
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
    scr_tutorial_spawn_goal();
}

  //***************//
 //** Chapter 3 **//
//***************//

draw_set_colour(tuto_col_player);
draw_set_font(tuto_fnt_player);

draw_set_halign(fa_center);


//aktiv i 5 sek
if (tutorial_step > 10 && tutorial_step < 160) {
    draw_text(1520, 800, "Look for an entrace to the building");
}

if (tutorial_step > 165 && tutorial_step < 170) {
    draw_text(1520, 800, "There should be a vent in the floor");
}

if (tutorial_step > 165){
    global.tuto_running = false;
}

with(obj_player_seb){
    if (distance_to_object(obj_tuto_test_position) <= 10) {
        global.tuto_running = true; 
        tutorial_step = 170;
    }
}



//END THIS CHAPTER
if (tutorial_step > 170) {
    //next chapter
    global.tutorial_state = 4;
    tutorial_step = 0;
}

