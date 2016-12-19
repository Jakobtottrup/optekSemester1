/*
Indhold:

Vagten skal dræbe spilleren
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
    audio_sound_gain(snd_tutorial_music, 1, 100);
}

  //****************//
 //** Chapter 11 **//
//****************//


draw_set_colour(tuto_col_nar);
draw_set_font(tuto_fnt_nar);

//execute this at beginning
if (player_hit == false && blink_existed == false) {
    if(blink_existed == false) {
        if (tutorial_step > 10 && tutorial_step < 150) {
            draw_text(50, 400, "Erase all existence of the thief#or your boss might erase you");
            global.player_movement = false;
        }
        if (tutorial_step > 150 && tutorial_step < 270) {
            draw_text(50, 400, "Hit him with a strike of bullets#and watch the blood flow");
        }
        if (tutorial_step > 300 && tutorial_step < 390) {
            if (blink_existed == false) {
                draw_text(50, 400, "You better kill the thief#before he makes it into the building!");
            }
        }
        if (tutorial_step > 450 && tutorial_step < 460) {
            if (blink_existed == false) {
                draw_text(50, 400, "Right click and hold on one#of the buttons to charge it up");
            global.tuto_running = false; //pause
            }
        }
    }
}


//execute this when blink is activated
if (blink_existed == false) {
    if (instance_exists(obj_button_sword_blink_horiz) || instance_exists(obj_button_sword_blink_vert)) {
        blink_existed = true;
        global.tuto_running = true;
        tutorial_step = 0;
    }
}
if (blink_existed == true && player_hit == false && guard_dead == false && (!instance_exists(obj_button_sword_blink_horiz) || !instance_exists(obj_button_sword_blink_vert))) {
    if (tutorial_step > 1 && tutorial_step < 100) {
        draw_text(50, 400, "A guard is now running down#the hall with his machinegun");
    }
    if (tutorial_step > 120 && (!instance_exists(obj_button_sword_blink_horiz) || (!instance_exists(obj_button_sword_blink_vert)))){
        draw_text(50, 400, "You missed him! #Try again, but without#wasting all your tries");
        //global.tuto_running = false;
    }
}


//execute this when player is hit
if (player_hit == false) {
    if (instance_exists(obj_theif_bulletholes)) { //when the player is hit / dies
        global.tuto_running = true;
        tutorial_step = 1000;
        player_hit = true;
    }
}
if (player_hit = true) {
    if (tutorial_step > 1001 && tutorial_step < 1120) {
        draw_text(100, 400, "Well done! You hit the thief!");
    }
    if (tutorial_step > 1120 && tutorial_step < 1110) {
        draw_text(100, 400, "before he found the entrance");
    }   
    if (tutorial_step > 1001 && tutorial_step < 1090) {
        draw_set_halign(fa_center);
        draw_text(obj_player_seb.x, obj_player_seb.y+10, "Ohh noo! :(");
        draw_set_halign(fa_left);
    }
    if (tutorial_step > 1001 && tutorial_step < 1120) {
        draw_set_colour(tuto_col_guard);
        draw_text_transformed(1400, 400, "Get rekt n00b!", 2, 2, 30);
        draw_set_colour(tuto_fnt_nar);
    }
}





//execute this if the guard runs out of lives
if (guard_dead == false) {
    if (lives == 0 && (!instance_exists(obj_button_sword_blink_horiz) || (!instance_exists(obj_button_sword_blink_vert)))) {
        tutorial_step = 0;
        guard_dead = true;
    }
}
if (guard_dead == true) {
    if (tutorial_step > 1 && tutorial_step < 90) {
        draw_text(50, 400, "That was not so good");
    }
    if (tutorial_step > 110 && tutorial_step < 170) {
        draw_text(50, 450, "You have used all your given tries...");
    }
    if (tutorial_step > 175 && tutorial_step < 400) {
        draw_text(50, 500, "And you're practically fired,#but because this is a tutorial,#you're given one more try");
    }
    if (tutorial_step > 175 && tutorial_step < 500) {
        draw_text(1630, 750, "Try this one");
    }
}




//END THIS CHAPTER
if (tutorial_step > 1300 && player_hit == true) {
    //next chapter
    global.tutorial_state = 12;
    tutorial_step = 0;
}
/*
draw_text(1000, 100, "Player alive "+string(instance_exists(obj_player_seb)));
draw_text(1000, 150, "Player dead "+string(global.player_dead));
draw_text(1000, 200, "blink existed "+string(blink_existed));
draw_text(1000, 250, "bullet existed "+string(player_hit));
draw_text(1000, 300, "lives "+string(lives));
