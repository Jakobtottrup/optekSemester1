/*
Indhold:

Vagten har adgang til at trykke på knapperne.
Han får opgaver der skal løses
 - lyt langt fra tyven
 - lyt i nærheden af tyven
 - lyt direkte på tyven

både vertikale og horisontale knapper skal bruges
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
 //** Chapter 6 **//
//***************//

if (tutorial_step > 10 && global.tutorial_task[13]!=2) {
    draw_set_colour(tuto_col_guard);
    draw_set_font(tuto_fnt_guard);
    draw_text(50, 100, "Initiate sweeping search..#Press a button on the screen#to send a guard down that hall.");


//draw_healthbar(left, top, right, bottom, amount, backcol, mincol, maxcol, direction, showback, showborder);
        draw_healthbar(50, 300, 1500, 350, global.tutorial_task[10], c_black, c_red, c_green, 0, false, false);
    draw_text(50, 300, "Totale miss");

        draw_healthbar(50, 400, 1500, 450, global.tutorial_task[11], c_black, c_red, c_green, 0, false, false);
    draw_text(50, 400, "Near hit");
    
        draw_healthbar(50, 500, 1500, 550, global.tutorial_task[12], c_black, c_red, c_green, 0, false, false);
    draw_text(50, 500, "Direct hit");
    
   /*     draw_healthbar(1100, 600, 1500, 650, global.tutorial_task[9], c_black, c_red, c_green, 0, false, false);
    draw_text(1300, 600, "Move backwards");*/
}

//horizontal diode check
if instance_exists(obj_button_blink_horiz){
    with(obj_button_blink_horiz){
        //total miss
        if (distance_to_object(obj_player_seb) > global.maze_steplength*2){
            if global.tutorial_task[10] < 2{
                global.tutorial_task[10]++;
            }
        //near hit
        } else if (global.maze_steplength < distance_to_object(obj_player_seb) && distance_to_object(obj_player_seb) < global.maze_steplength){
            if global.tutorial_task[11] < 2{
                global.tutorial_task[11]++;
                if (global.tutorial_task[10] > 0){
                    global.tutorial_task[10]--;
                }
            }
        //direct hit
        } else if (distance_to_object(obj_player_seb)< global.maze_steplength){
            if global.tutorial_task[12] < 2{
                global.tutorial_task[12]++;
                if (global.tutorial_task[10] > 0){
                    global.tutorial_task[10]--;
                }
            }
        }
    }
}

//vertical diode check
if instance_exists(obj_button_blink_vert){
    with(obj_button_blink_vert){
        //total miss
        if (distance_to_object(obj_player_seb) > global.maze_steplength*4){
            if global.tutorial_task[10] < 2{
                global.tutorial_task[10]++;
            }
        //near hit
        } else if (global.maze_steplength < distance_to_object(obj_player_seb) && distance_to_object(obj_player_seb) < global.maze_steplength*3){
            if global.tutorial_task[11] < 2{
                global.tutorial_task[11]++;
            }
        //direct hit
        } else if (distance_to_object(obj_player_seb)< global.maze_steplength){
            if global.tutorial_task[12] < 2{
                global.tutorial_task[12]++;
            }
        }
    }
}

if (global.tutorial_task[10] == 2) && (global.tutorial_task[11] == 2) && (global.tutorial_task[12] == 2){
    global.tutorial_task[13] = 2;
} 


//END THIS CHAPTER
if (global.tutorial_task[13]==2) {
    //next chapter
    global.tutorial_state = 7;
    tutorial_step = 0;
}
