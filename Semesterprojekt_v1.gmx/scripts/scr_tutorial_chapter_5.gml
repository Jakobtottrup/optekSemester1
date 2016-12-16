/*
Indhold:

Vagten har lige tændt lyset på sit kontor (der er lyd på kontakten :D )
Han kan ikke trykke på noget endnu, men skal have hans rolle præsenteret

Spilleren skal have lyst til at løbe ned ad gangen inden næste kapitel
for at sikre, at han ved hvad den røde cirkel egentligt er
*/

if (tutorial_step == 0) {
    scr_screen_buttons_place_seb();
    audio_play_sound(snd_light_switch, 1, false);
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
 //** Chapter 5 **//
//***************//
draw_set_colour(tuto_col_nar);
draw_set_font(tuto_fnt_nar);
if (tutorial_step > 10 && tutorial_step < 70) {
    draw_text(50, 200, "*Security guard ID DW590 #checking in*");
}

if (tutorial_step > 75 && tutorial_step < 135) {
    draw_set_colour(tuto_col_nar);
    draw_set_font(tuto_fnt_nar_bold);
    draw_text(1100, 600, "HM!?##Is Someone here??");
}

if (tutorial_step > 140 && tutorial_step < 230){
    draw_text(1200, 850, "I should probably send someone#to check the ventilation ducts!");
}

if (tutorial_step > 200 && tutorial_step < 290) {
    draw_set_colour(tuto_col_player);
    draw_set_font(tuto_fnt_player);
    draw_text(100, 400, "Don't move a muscle!##If you move while guards #are checking you will #trigger the alarm!");
}


//END THIS CHAPTER
if (tutorial_step > 320) {
    //next chapter
    global.tutorial_state = 6;
    tutorial_step = 0;
}
