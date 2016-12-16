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
//draw_text_transformed(x, y, string, xscale, yscale, angle);

  //***************//
 //** Chapter 1 **//
//***************//
draw_set_colour(tuto_col_nar);
draw_set_font(tuto_fnt_nar);

if (tutorial_step > 10 && tutorial_step < 300) {
    draw_text(50, 100, "Operation: Corporate Espionage");
}

if (tutorial_step > 140 && tutorial_step < 590) {
    draw_text_transformed(50, 200, "
    Your mission, should you choose to accept...#
    #
    - Move through the ventilation duct#    to find an entrance into the building#
    - Don't move when guards are near#    to avoid detection#
    - Avoid getting blinded by laser grids#    while using nightvision#
    #
    As always, the agency will disavow all knowledge#of your existence if you're captured.
    ", 0.6, 0.6, 0);
}



//END THIS CHAPTER
if (tutorial_step > 600) {
    //next chapter
    global.tutorial_state = 2;
    tutorial_step = 0;
}


