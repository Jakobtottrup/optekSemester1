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

//start chapter
if (tutorial_step == 0) {
    //init
}

  //****************//
 //** Chapter 10 **//
//****************//

//creates the lives in the tutorial//
instance_create(room_width-250,60,obj_tutorial_healthbar)

//Creates ingame text to tell the players about the kill function and the guards lives and how to get more lives/credits  //
if (tutorial_step > 10 && tutorial_step < 190) {

    draw_set_colour(tuto_col_guard)
    draw_set_font(tuto_fnt_guard)
    draw_text_ext(75, 200, "I have to do something about this thief. I need to think of a way to get rid of him.#Permanently!",45,500);
}

if (tutorial_step > 195 && tutorial_step < 315) {

    draw_set_colour(tuto_col_nar)
    draw_set_font(tuto_fnt_nar)
    draw_text_ext(75, 300, "You can use your machine gun to kill the theif by shooting down the ventilation ducts",45,500);
}


if (tutorial_step > 320 && tutorial_step < 440) {

    draw_set_colour(tuto_col_nar)
    draw_set_font(tuto_fnt_nar)
    draw_text_ext(75, 300, "But watch out!#Your boss won't be happy if you keep shooting all over the place!",45,500);
}


if (tutorial_step > 445 && tutorial_step < 565) {


    draw_set_colour(tuto_col_nar)
    draw_set_font(tuto_fnt_nar)
    draw_text_ext(75, 300, "The guns in the top right of the screen indicate how much 'credit' you have left before you get fired",45,500);
}


if (tutorial_step > 570 && tutorial_step < 690) {

    draw_set_colour(tuto_col_nar)
    draw_set_font(tuto_fnt_nar)
    draw_text_ext(75, 300, "It's possible to regain some 'credit' with your boss. If the thief moves around to much you will get another chance at taking him down",45,500);
}


if (tutorial_step > 695 && tutorial_step < 905) {

    draw_set_colour(tuto_col_nar)
    draw_set_font(tuto_fnt_nar)
    draw_text_ext(75, 300, "You can take your gun and shot up one of the ducts.",45,500);

    draw_set_font(tuto_fnt_nar_bold)
    draw_text_ext(75, 500, "Do this by holding down right click on your buttons on the screen.",45,500);
}


//END THIS CHAPTER
if (tutorial_step > 910) {
    //next chapter
    global.tutorial_state = 11;
    tutorial_step = 0;
}
