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
    tutorial_step = 100;
    global.nightvision_mode = true;
}

  //***************//
 //** Chapter 6 **//
//***************//
if global.tuto_running == true{
    miss = 0;
    near = 0;
    hit = 0;
    task_complete = 0;
}

if (tutorial_step > 110 && global.tutorial_task[13] !=2 && task_complete == 0) {
    
    global.tuto_running = false;
    draw_set_colour(tuto_col_guard);
    draw_set_font(tuto_fnt_guard);
//  Development data  
    
/*    draw_text(50, 700, string(hit));
    draw_text(100, 700, string(near));
    draw_text(150, 700, string(miss));
    draw_text(50, 800, "player x: "+string(obj_player_seb.x));
    draw_text(50, 900, "player y: "+string(obj_player_seb.y));
    
    draw_text(300, 700, string(global.maze_steplength));
    if instance_exists(obj_button_blink_horiz){
    draw_text(50, 600, "diode y: "+string(obj_button_blink_horiz.y));
    }
    if instance_exists(obj_button_blink_vert){
    draw_text(50, 650, "diode x: "+string(obj_button_blink_vert.x));
    }
 */
    
    draw_text(50, 100, "Initiate sweeping search..#Press a button on the screen#to send a guard down that hall.");


//draw_healthbar(left, top, right, bottom, amount, backcol, mincol, maxcol, direction, showback, showborder);
        draw_healthbar(50, 300, 450, 350, (global.tutorial_task[10] / 2) * 100, c_black, c_red, c_green, 0, false, false);
    draw_text(180, 300, "Total miss");

        draw_healthbar(50, 400, 450, 450, (global.tutorial_task[11] / 2) * 100, c_black, c_red, c_green, 0, false, false);
    draw_text(180, 400, "Near hit");
    
        draw_healthbar(50, 500, 450, 550, (global.tutorial_task[12] / 2) * 100, c_black, c_red, c_green, 0, false, false);
    draw_text(180, 500, "Direct hit");
    
   /*     draw_healthbar(1100, 600, 1500, 650, global.tutorial_task[9], c_black, c_red, c_green, 0, false, false);
    draw_text(1300, 600, "Move backwards");*/
}

//horizontal diode check
if instance_exists(obj_button_blink_horiz){
//      -------- Check if diode y-position is the same as player position ---------    
        if obj_button_blink_horiz.y = obj_player_seb.y{
            hit = 1;
        } else 
//      --------Check if diode y-position is between 1 and 2 steplengths ABOVE player position --------         >> OR <<   
        if (obj_button_blink_horiz.y < 365 && obj_button_blink_horiz.y > 360) || 
//      --------- Check if diode y-position is between 1 and 2 steplengths BELOW player position -----------
        (obj_button_blink_horiz.y < 560 && obj_button_blink_horiz.y > 555) {
            near = 1;
        } else
//      --------- Check if diode y-position is further than 2 steplengths in either direction from player position --------------
        if (obj_button_blink_horiz.y < obj_player_seb.y - (global.maze_steplength*2)) || (obj_button_blink_horiz.y > obj_player_seb.y + (global.maze_steplength*2)) {
            miss = 1;
    }
//vertical diode check
} else if instance_exists(obj_button_blink_vert){
//      -------- Check if diode x-position is the same as player position ---------    
        if obj_button_blink_vert.x > 1740 && obj_button_blink_vert.x < 1750{
            hit = 1;
        } else 
//      --------Check if diode x-position is between 1 and 2 steplengths LEFT of player position --------         >> OR <<   
        if (obj_button_blink_vert.x < 1550 && obj_button_blink_vert.x > 1540) {
            near = 1;
        } else
//      --------- Check if diode x-position is further than 2 steplengths in either direction from player position --------------
        if (obj_button_blink_vert.x < obj_player_seb.x - (global.maze_steplength*2)) || (obj_button_blink_vert.x > obj_player_seb.x + (global.maze_steplength*2)) {
            miss = 1;
        }
}   

//increment appropriate task (only if no diodes exist)
if !instance_exists(obj_button_blink_horiz) && !instance_exists(obj_button_blink_vert){
    if hit == 1 && global.tutorial_task[12] < 2 && task_complete = 0 {
        global.tutorial_task[12]++;
        tutorial_step = 110;
        global.tuto_running = true;
    } else
    if near == 1 && global.tutorial_task[11] < 2 && task_complete = 0 {
        global.tutorial_task[11]++;
        tutorial_step = 110;
        global.tuto_running = true;
    } else
    if miss == 1 && global.tutorial_task[10] < 2 && task_complete = 0 {
        global.tutorial_task[10]++;
        tutorial_step = 110;
        global.tuto_running = true;
    }
}    
if (global.tutorial_task[10] == 2) && (global.tutorial_task[11] == 2) && (global.tutorial_task[12] == 2) && task_complete = 0{
    global.tutorial_task[13] = 2;
    
    task_complete = 1;  
        
}
if(task_complete && !global.tuto_running){
    tutorial_step = 110;
    global.tuto_running = true;
} 
if(task_complete){
    draw_text(50, 600, "Well done!#Now let's try activating laser grids!"); 
            draw_healthbar(50, 300, 450, 350, (global.tutorial_task[10] / 2) * 100, c_black, c_red, c_green, 0, false, false);
    draw_text(180, 300, "Total miss");

        draw_healthbar(50, 400, 450, 450, (global.tutorial_task[11] / 2) * 100, c_black, c_red, c_green, 0, false, false);
    draw_text(180, 400, "Near hit");
    
        draw_healthbar(50, 500, 450, 550, (global.tutorial_task[12] / 2) * 100, c_black, c_red, c_green, 0, false, false);
    draw_text(180, 500, "Direct hit");
}


//END THIS CHAPTER
if (global.tutorial_task[13] == 2) && task_complete == 1 && tutorial_step > 150{
    //next chapter
    global.tutorial_state = 7;
    tutorial_step = 0;
    global.tuto_running = true;
}
