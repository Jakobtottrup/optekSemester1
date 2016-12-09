intro_text_color = c_white;
draw_set_colour(intro_text_color);
draw_set_font(fnt_intro);
draw_set_halign(fa_center);


//DELETE THIS
draw_set_alpha(1);
if (intro_page == 0) {
    draw_text(60, room_height-60, "Test");
}
//DELETE THE ABOVE


  //*************************//
 //**** Fade Controller ****//
//*************************//

//fade out
if (intro_page == 0) {
    for (i = 0; i < array_length_1d(intro_fade); i++) {
        if (intro_fade[i] > 0) {
            intro_fade[i] -= intro_fade_speed;
        }
    }
}

//****************//

//Semesterprojekt
if (intro_page == 1 || intro_page == 2) {
    if (intro_fade[1] < 1) {
        intro_fade[1] += intro_fade_speed;
    }
}

//2016
if (intro_page == 2) {
    if (intro_fade[2] < 1) {
        intro_fade[2] += intro_fade_speed;
    }
}

//****************//
 
//assymetrisk multiplayer
if (intro_page == 3 || intro_page == 4) {
    if (intro_fade[3] < 1) {
        intro_fade[3] += intro_fade_speed;
    }
}

//digital prototype
if (intro_page == 4) {
    if (intro_fade[4] < 1) {
        intro_fade[4] += intro_fade_speed;
    }
}

//****************//

//Produceret af
if (intro_page >= 5 && intro_page <= 9) {
    if (intro_fade[5] < 1) {
        intro_fade[5] += intro_fade_speed;
    }
    
    //navn 1
    if (intro_page > 5) {
        if (intro_fade[6] < 1) {
            intro_fade[6] += intro_fade_speed;
        }
    }
    
    //navn 2
    if (intro_page > 6) {
        if (intro_fade[7] < 1) {
            intro_fade[7] += intro_fade_speed;
        }
    }
    
    //navn 3
    if (intro_page > 7) {
        if (intro_fade[8] < 1) {
            intro_fade[8] += intro_fade_speed;
        }
    }
    
    //navn 4
    if (intro_page > 8) {
        if (intro_fade[9] < 1) {
            intro_fade[9] += intro_fade_speed;
        }
    }
}

//****************//

//Mission Kinda Impossible
if (intro_page == 10 || intro_page == 11) {
    if (intro_fade[10] < 1) {
        intro_fade[10] += intro_fade_speed;
    }
}

//<space to skip>
if (intro_page > 10) {
    if (intro_fade[11] < 1) {
        intro_fade[11] += intro_fade_speed;
    }
}




  //*******************//
 //**** draw text ****//
//*******************//

for (i = 1; i < array_length_1d(intro_fade); i++) {
    draw_set_alpha(intro_fade[i]);
    draw_text(room_width/2, intro_y[i], intro_manus[i]);
}










//Reset alpha to show future objects
draw_set_alpha(1);

