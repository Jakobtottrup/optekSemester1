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

//if mission nightvision
if (global.tutorial_task[5] == 0) {
    //if mission finished
    if (global.tutorial_task[4] > 90) {
        //if it has not changed yet
        if (tutorial_step < 1000) {
            //next mission
            global.tutorial_task[5] = 1;
            tutorial_step = 1000;
        }
    }
}

//if mission movement
if (global.tutorial_task[5] == 1) {
    //if move forward dialog
    if (tutorial_step > 1000 && tutorial_step < 2000) {
        //if finished move forward
        if (global.tutorial_task[6] > 45) {
            //jump to next part
            tutorial_step = 2000;
        }
    }
    
    //if take a turn dialog
    if (tutorial_step > 2000 && tutorial_step < 3000) {
        //if finished move forward
        if (global.tutorial_task[7] > 45) {
            //jump to next part
            tutorial_step = 3000;
        }
    }
    
    //if turn around dialog
    if (tutorial_step > 3000 && tutorial_step < 4000) {
        //if finished move forward
        if (global.tutorial_task[8] > 55) {
            //jump to next part
            tutorial_step = 4000;
        }
    }
    
    //if turn around dialog
    if (tutorial_step > 4000 && tutorial_step < 5000) {
        //if finished move forward
        if (global.tutorial_task[9] > 55) {
            //jump to next part
            tutorial_step = 5000;
        }
    }
    
    //check if missions finished
    if (global.tutorial_task[6] > 90) {
        if (global.tutorial_task[7] > 90) {
            if (global.tutorial_task[8] > 90) {
                if (global.tutorial_task[9] > 90) {
                    //stop move mission
                    global.tutorial_task[5] = 2;
                    //pause tutorial
                    global.tuto_running = false;
                    tutorial_step = 6000;
                }
            }
        }
    }
}

//if all missions are finished
if (global.tutorial_task[5] == 2) {
    //and the player can't see a dead end
    if (global.player_view_id != 0) {
        //go to next chapter
        global.tuto_running = true;
        tutorial_step = 7100;
    }
}

  //******************//
 //** loop control **//
//******************//

if (global.tutorial_task[5] == 0) {
    //loop nightvision dialog
    if (tutorial_step > 900) {
        tutorial_step = 100;
    }
}

if (global.tutorial_task[5] == 1) {
    //loop move forward
    if (tutorial_step > 1900 && tutorial_step < 2000) {
        tutorial_step = 1100;
    }
    
    //loop take a turn
    if (tutorial_step > 2900 && tutorial_step < 3000) {
        tutorial_step = 2100;
    }
    
    //loop turn around
    if (tutorial_step > 3900 && tutorial_step < 4000) {
        tutorial_step = 3100;
    }
    
    //loop move backwards
    if (tutorial_step > 4900 && tutorial_step < 5000) {
        tutorial_step = 4100;
    }
    
    //complete the rest
    if (tutorial_step > 5900 && tutorial_step < 6000) {
        tutorial_step = 5100;
    }
}


  //***************//
 //** Chapter 2 **//
//***************//

draw_set_font(tuto_fnt_player);
draw_set_color(tuto_col_player);

draw_set_halign(fa_center);




//nightvision
if (tutorial_step > 20 && tutorial_step < 100) {
    draw_text(300, 300, "It's really dark in here");
}

if (tutorial_step > 80 && tutorial_step < 240) {
    draw_text(300, 380, "press '2' for nightvision");
}

if (tutorial_step > 300 && tutorial_step < 450) {
    draw_text(300, 380, "I can't see anything right now");
}

if (tutorial_step > 500 && tutorial_step < 650) {
    draw_text(300, 380, "Press the button '2'");
}

if (tutorial_step > 700 && tutorial_step < 850) {
    draw_text(300, 380, "The button 2...#right between 1 and 3");
}


//move forward
if (tutorial_step > 1020 && tutorial_step < 1100) {
    draw_text(1520, 800, "Next task is moving forward");
}

if (tutorial_step > 1080 && tutorial_step < 1240) {
    draw_text(1520, 880, "Use the arrow keys to move");
}

if (tutorial_step > 1300 && tutorial_step < 1450) {
    draw_text(1520, 880, "Press the arrow pointing up");
}

if (tutorial_step > 1500 && tutorial_step < 1650) {
    draw_text(1520, 880, "I would love to move forward some day");
}

if (tutorial_step > 1700 && tutorial_step < 1850) {
    draw_text(1520, 880, "It's right above the#arrow pointing down");
}


//take a turn
if (tutorial_step > 2020 && tutorial_step < 2100) {
    draw_text(1520, 800, "Now take a turn");
}

if (tutorial_step > 2080 && tutorial_step < 2240) {
    draw_text(1520, 880, "Press one of the sideways arrow keys");
}

if (tutorial_step > 2300 && tutorial_step < 2450) {
    draw_text(1520, 880, "Make sure the vent is turning#or you'll just turn around");
}

if (tutorial_step > 2500 && tutorial_step < 2650) {
    draw_text(1520, 880, "The arrow keys beside#the arrow pointing down");
}

if (tutorial_step > 2700 && tutorial_step < 2850) {
    draw_text(1520, 880, "It's no time to rest");
}


//turn around
if (tutorial_step > 3020 && tutorial_step < 3100) {
    draw_text(1520, 800, "It's going well!");
}

if (tutorial_step > 3080 && tutorial_step < 3240) {
    draw_text(1520, 880, "Press the sideways arrow keys#to turn around");
}

if (tutorial_step > 3300 && tutorial_step < 3450) {
    draw_text(1520, 880, "Make sure the vent is not turning#the direction you press");
}

if (tutorial_step > 3500 && tutorial_step < 3650) {
    draw_text(1520, 880, "Try turning in a straigth vent");
}

if (tutorial_step > 3700 && tutorial_step < 3850) {
    draw_text(1520, 880, "Maybe you are too old for this job");
}


//move backwards
if (tutorial_step > 4020 && tutorial_step < 4100) {
    draw_text(1520, 800, "Only one task left");
}

if (tutorial_step > 4080 && tutorial_step < 4240) {
    draw_text(1520, 880, "Press the arrow key pointing down");
}

if (tutorial_step > 4300 && tutorial_step < 4450) {
    draw_text(1520, 880, "This will only work if there#is a possible way behind you");
}

if (tutorial_step > 4500 && tutorial_step < 4650) {
    draw_text(1520, 880, "Use the downward arrow key to move");
}

if (tutorial_step > 4700 && tutorial_step < 4850) {
    draw_text(1520, 880, "Use the map as a reference#to make sure backtracking is possible");
}


//complete the rest of the missions
if (tutorial_step > 5020 && tutorial_step < 5100) {
    draw_text(1520, 800, "You should be ready to move around now");
}

if (tutorial_step > 5080 && tutorial_step < 5240) {
    draw_text(1520, 880, "Complete the rest of the tasks");
}

if (tutorial_step > 5300 && tutorial_step < 5450) {
    draw_text(1520, 880, "Use the arrow keys to get around");
}

if (tutorial_step > 5500 && tutorial_step < 5650) {
    draw_text(1520, 880, "You have learned everything.#There should be no excuses");
}

if (tutorial_step > 5700 && tutorial_step < 5850) {
    draw_text(1520, 880, "Could you try a little harder");
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
if (tutorial_step > 7000) {
    //next chapter
    global.tutorial_state = 3;
    tutorial_step = 0;
}

