/*
Indhold:

Vagten har adgang til at trykke på dørene.
Der skal forklares, hvorfor dørene løber ud.
Han skal ende med at have døre lukket omkring spilleren
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
 //** Chapter 7 **//
//***************//


global.permission_doors = true;
global.permission_move = true;
global.player_movement = true;
//instance_create(obj_player_seb.x, obj_player_seb.y-global.maze_steplength, obj_door_open);

if (tutorial_step > 10 && tutorial_step < 100) {
    global.tuto_running = false; //pause tutorial - development
    draw_text(50, 800, "player x: "+string(obj_player_seb.x));
    draw_text(50, 900, "player y: "+string(obj_player_seb.y));
     draw_text(50, 400, "*Laser grid installed!*##Activate it by clicking#the empty square");
}




//END THIS CHAPTER
if (tutorial_step > 140) {
    //next chapter
    global.tutorial_state = 8;
    tutorial_step = 0;
}
