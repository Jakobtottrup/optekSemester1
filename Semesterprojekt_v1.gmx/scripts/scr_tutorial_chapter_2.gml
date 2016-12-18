/*
Indhold:

Tyven kan bevæge sig. Han får opgaver om bevægelse.
Han skal først lære at bruge nightvision.
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

draw_set_halign(fa_center);

  //*****************//
 //** bar control **//
//*****************//

//show bar slowly growing
for (i = 0; i < 4; i++) {
    if (global.tutorial_task[i] > global.tutorial_task[i+6]) {
        global.tutorial_task[i+6] += 2;
    }
}

if (global.tutorial_task[4] > global.tutorial_task[14]) {
    global.tutorial_task[14] += 2;
}

  //*********************//
 //** mission control **//
//*********************//

//if mission 1
if (global.tutorial_task[5] == 0) {
    //if mission finished
    if (global.tutorial_task[4] > 90) {
        //next mission
        global.tutorial_task[5] = 1;
        tutorial_step = 1000;
    }
}



if (global.tutorial_task[5] == 0) {
    //loop nightvision dialog
    if (tutorial_step > 900) {
        tutorial_step = 100;
    }
}

if (global.tutorial_task[5] == 1) {
    //loop move forward
    if (tutorial_step > 1900) {
        tutorial_step = 1100;
    }
    
    //loop take a turn
    if (tutorial_step > 2900) {
        tutorial_step = 2100;
    }
    
    //loop turn around
    if (tutorial_step > 3900) {
        tutorial_step = 3100;
    }
    
    //loop move backwards
    if (tutorial_step > 4900) {
        tutorial_step = 4100;
    }
}


  //***************//
 //** Chapter 2 **//
//***************//

draw_set_font(tuto_fnt_player);
draw_set_color(tuto_col_player);

if (tutorial_step > 20 && tutorial_step < 100) {
    draw_text(1500, 900, "It's so dark in here");
}


if (tutorial_step > 80 && tutorial_step < 140) {
    draw_text(1300, 240, "The nightvision should activate with the button '2'");
}

if (tutorial_step > 120 && tutorial_step < 140) {
    draw_text(1300, 300, "I'll just have to watch out for sharp lighting");
}











  //************//
 //** on PDA **//
//************//

draw_set_font(tuto_fnt_pda);
draw_set_color(tuto_col_pda);

if (global.tutorial_task[5] == 0 || global.tutorial_task[5] == 1) {
    //draw pda
    draw_sprite_ext(spr_PDA, 0, 693, 490, 0.9, 0.9, 0, c_white, 1);

    draw_text(900, 520, "Training mission");
    
    //nightvision bar
       draw_healthbar(740, 600, 1060, 640, global.tutorial_task[14], c_black, c_red, c_green, 0, false, false);
    draw_text(900, 600, "Nightvision");
}





if (global.tutorial_task[5] == 1 && tutorial_step > 1020) {
        //draw_healthbar(left, top, right, bottom, amount, backcol, mincol, maxcol, direction, showback, showborder);

    //move forward bar
        draw_healthbar(740, 700, 1060, 740, global.tutorial_task[6], c_black, c_red, c_green, 0, false, false);
    draw_text(900, 700, "Move forward");
    
    //take a turn bar
        draw_healthbar(740, 760, 1060, 800, global.tutorial_task[7], c_black, c_red, c_green, 0, false, false);
    draw_text(900, 760, "Change direction");
    
    //turn around bar
        draw_healthbar(740, 820, 1060, 860, global.tutorial_task[8], c_black, c_red, c_green, 0, false, false);
    draw_text(900, 820, "Turn around");
    
    //walk backwards bar
        draw_healthbar(740, 880, 1060, 920, global.tutorial_task[9], c_black, c_red, c_green, 0, false, false);
    draw_text(900, 880, "Move backwards");
}



    
    








//END THIS CHAPTER
if (tutorial_step > 5000) {
    //next chapter
    global.tutorial_state = 3;
    tutorial_step = 0;
}

