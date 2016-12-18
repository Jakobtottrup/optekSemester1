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

//start chapter
if (tutorial_step == 0) {
    //init
}

  //***************//
 //** Chapter 1 **//
//***************//

draw_set_colour(tuto_col_pda);
draw_set_font(tuto_fnt_nar);

if (tutorial_step > 10 && tutorial_step < 300) {
    draw_text(30, 100, "Operation: Corporate Espionage");
}



  //************//
 //** on PDA **//
//************//

draw_set_colour(tuto_col_pda);
draw_set_font(tuto_fnt_pda);

//draw pda
draw_sprite_ext(spr_PDA, 0, 60, 240, 1.1, 1.1, 0, c_white, 1);

//mission briefing
if (tutorial_step > 60 && tutorial_step < 1000) {
    draw_text_transformed(80, 260, "Your mission, should you choose#to accept...", 0.8, 0.8, 0);
}

if (tutorial_step > 160 && tutorial_step < 1000) {
    draw_text_transformed(86, 370, "Get into the building through the#ventilation ducts", 0.7, 0.7, 0);
}

if (tutorial_step > 162 && tutorial_step < 1000) {
    draw_text_transformed(86, 435, "Locate a file cabinet and get the#document folder", 0.7, 0.7, 0);
}

//onstructions
if (tutorial_step > 166 && tutorial_step < 1000) {
    draw_text_transformed(86, 530, "Expected obstructions", 0.7, 0.7, 0);
}

if (tutorial_step > 180 && tutorial_step < 1000) {
    draw_text_transformed(98, 560, "Avoid moving when guards are near by", 0.7, 0.7, 0);
}

if (tutorial_step > 182 && tutorial_step < 1000) {
    draw_text_transformed(98, 590, "Avoid lasers when using nightvision", 0.7, 0.7, 0);
}


//as always
if (tutorial_step > 200 && tutorial_step < 1000) {
    draw_text_transformed(80, 680, "As always,", 0.7, 0.7, 0);
}

if (tutorial_step > 204 && tutorial_step < 1000) {
    draw_text_transformed(86, 716, "the agency will disavow all knowledge#of your existence if you're captured", 0.7, 0.7, 0);
}

//Loading
if (tutorial_step > 220 && tutorial_step < 540) {
    if (tutorial_step < 520) {
        draw_healthbar(74, 778, 554, 810, ((tutorial_step - 220) / 3), c_dkgray, c_fuchsia, c_blue, 0, true, true);
    } else {
        draw_healthbar(74, 778, 554, 810, (100), c_dkgray, c_fuchsia, c_blue, 0, true, true);
    }
}



/*
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
*/


//END THIS CHAPTER
if (tutorial_step > 600) {
    //next chapter
    global.tutorial_state = 2;
    tutorial_step = 0;
}


