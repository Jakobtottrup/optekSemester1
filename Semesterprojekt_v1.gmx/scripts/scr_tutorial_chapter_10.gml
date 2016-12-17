/*
Indhold:

Vagten kan ikke bevæge sig.
Han skal introduceres for at kunne dræbe.
Han skal have forklaret konsekvenserne ved ikke at ramme
og hvordan han "tjener respekt/credit/lives" til at måtte ødelægge mere
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

//creates the lives in the tutorial//
instance_create(room_width-250,60,obj_tutorial_healthbar)

//Creates ingame text to tell the players about the kill function and the guards lives and how to get more lives/credits  //
if (tutorial_step > 10 && tutorial_step < 130) {

    draw_set_colour(tuto_col_guard)
    draw_set_font(tuto_fnt_guard)
    draw_text(50, 400, "I have to do something about this thief# I have to find a way to get rid of him, Permanently!");
}

if (tutorial_step > 135 && tutorial_step < 255) {

    draw_set_colour(tuto_col_nar)
    draw_set_font(tuto_fnt_nar)
    draw_text(50, 400, "You can use your machine gun to kill the theif# by shooting down the ventilation ducts");
}


if (tutorial_step > 260 && tutorial_step < 380) {

    draw_set_colour(tuto_col_nar)
    draw_set_font(tuto_fnt_nar)
    draw_text(50, 400, "But watch out!# Your boss won't be happy if you# keep shooting all over the place!");
}


if (tutorial_step > 385 && tutorial_step < 505) {

    draw_set_colour(tuto_col_nar)
    draw_set_font(tuto_fnt_nar)
    draw_text(50, 400, "You can take your gun and shot up one of the ducts.# Do this by holding down right click on your buttons on the screen.");
}


if (tutorial_step > 510 && tutorial_step < 630) {

    draw_set_colour(tuto_col_nar)
    draw_set_font(tuto_fnt_nar)
    draw_text(50, 400, "It is possible to regain some# 'credits' with your boss.# If the thief moves around to much# you will get another chance at taking him down");
}


if (tutorial_step > 635 && tutorial_step < 755) {

    draw_set_colour(tuto_col_nar)
    draw_set_font(tuto_fnt_nar)
    draw_text(50, 400, "The guns in the top right of the screen# indicate how much 'credit' you have left# before you get fired");
}
/*Need a way to draw the health bar in the turorial and this is not working.
draw_healthbar(room_width - 250, 60, room_width - 100, 160, 3, c_black, c_black, c_black, 0, false, false)
*/


//END THIS CHAPTER
if (tutorial_step > 760) {
    //next chapter
    global.tutorial_state = 11;
    tutorial_step = 0;
}
