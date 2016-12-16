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

if (tutorial_step > 10 && tutorial_step < 100) {
    draw_text(50, 400, "Bla bla vagt info");
}




//END THIS CHAPTER
if (tutorial_step > 140) {
    //next chapter
    global.tutorial_state = 6;
    tutorial_step = 0;
}
