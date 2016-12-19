/*
Indhold:

Vagten har lige tændt lyset på sit kontor (der er lyd på kontakten :D )
Han kan ikke trykke på noget endnu, men skal have hans rolle præsenteret

Spilleren skal have lyst til at løbe ned ad gangen inden næste kapitel
for at sikre, at han ved hvad den røde cirkel egentligt er
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
    scr_screen_buttons_place_seb();
    audio_play_sound(snd_light_switch, 1, false);
    
    //move player
    with (obj_player_seb) {
        x = obj_tuto_test_position.x;
        y = obj_tuto_test_position.y;
        direction = 90;
    }
    
    audio_sound_gain(snd_tutorial_music, 0.4, 0);
}

  //***************//
 //** Chapter 5 **//
//***************//
draw_set_colour(tuto_col_nar);
draw_set_font(tuto_fnt_nar);
if (tutorial_step > 10 && tutorial_step < 100) {
    draw_text(50, 200, "*Security guard ID DW590 #checking in*");
}

if (tutorial_step > 105 && tutorial_step < 195) {
    draw_set_colour(tuto_col_nar);
    draw_set_font(tuto_fnt_nar_bold);
    draw_text(1100, 600, "HM!?##Is Someone here??");
}

if (tutorial_step > 200 && tutorial_step < 290){
    draw_text(1200, 850, "I should probably send someone#to check the ventilation ducts!");
}

if (tutorial_step > 300 && tutorial_step < 390) {
    draw_set_colour(tuto_col_player);
    draw_set_font(tuto_fnt_player);
    draw_text(100, 400, "Don't move a muscle!##If you move while guards #are checking you will #trigger the alarm!");
}


//END THIS CHAPTER
if (tutorial_step > 520) {
    //next chapter
    global.tutorial_state = 6;
    tutorial_step = 0;
}
