/*
Indhold:

Aftermath
Opsamling af grundlæggende knapper og funktioner
help-knap?
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
 //** Chapter 12 **//
//****************//

if (tutorial_step > 10 && tutorial_step < 100) {
    draw_text(50, 400, "Bla bla aftermath");
}




//END THIS CHAPTER
if (tutorial_step > 140) {
    if audio_is_playing(snd_tutorial_music) == true {
    audio_stop_sound(snd_tutorial_music)
    }

    //next chapter
    global.tutorial_state = 0;
    room_goto(rm_MenuCabinet);
}
