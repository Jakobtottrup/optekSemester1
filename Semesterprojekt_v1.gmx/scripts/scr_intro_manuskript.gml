intro_text_color = c_white;
draw_set_colour(intro_text_color);
draw_set_font(fnt_intro);
draw_set_halign(fa_center);

/*
The intro draws every word on the same time, but changes the opacity based on what should be shown.
This is controlled by a timeline turning the "pages" of the manuskript
*/


//DELETE THIS
draw_set_alpha(1);
if (intro_page == 0) {
    draw_text(60, room_height-60, "Black");
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










  //*********************//
 //**** Manus timer ****//
//*********************//

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
//****************//

 
//assymetrisk
if (intro_page >= 3 && intro_page <= 5) {
    if (intro_fade[3] < 1) {
        intro_fade[3] += intro_fade_speed;
    }
}

if (intro_page == 4 || intro_page == 5) {
    if (intro_fade[4] < 1) {
        intro_fade[4] += intro_fade_speed;
    }
}

//digital prototype
if (intro_page == 5) {
    if (intro_fade[5] < 1) {
        intro_fade[5] += intro_fade_speed;
    }
}

//****************//
//****************//

//Produceret af
if (intro_page >= 6 && intro_page <= 16) {
    if (intro_fade[6] < 1) {
        intro_fade[6] += intro_fade_speed;
    }
}

//Christian Skjerning
if (intro_page >= 7 && intro_page <= 16) {
    if (intro_fade[7] < 1) {
        intro_fade[7] += intro_fade_speed;
    }
}

if (intro_page >= 8 && intro_page <= 16) {
    if (intro_fade[8] < 1) {
        intro_fade[8] += intro_fade_speed;
    }
}

//Sebastian Andresen
if (intro_page >= 9 && intro_page <= 16) {
    if (intro_fade[9] < 1) {
        intro_fade[9] += intro_fade_speed;
    }
}

if (intro_page >= 10 && intro_page <= 16) {
    if (intro_fade[10] < 1) {
        intro_fade[10] += intro_fade_speed;
    }
}

//Jakob Vierø Tøttrup
if (intro_page >= 11 && intro_page <= 16) {
    if (intro_fade[11] < 1) {
        intro_fade[11] += intro_fade_speed;
    }
}

if (intro_page >= 12 && intro_page <= 16) {
    if (intro_fade[12] < 1) {
        intro_fade[12] += intro_fade_speed;
    }
}

if (intro_page >= 13 && intro_page <= 16) {
    if (intro_fade[13] < 1) {
        intro_fade[13] += intro_fade_speed;
    }
}

//Jim Christian Pedersen
if (intro_page >= 14 && intro_page <= 16) {
    if (intro_fade[14] < 1) {
        intro_fade[14] += intro_fade_speed;
    }
}

if (intro_page == 15 || intro_page == 16) {
    if (intro_fade[15] < 1) {
        intro_fade[15] += intro_fade_speed;
    }
}

if (intro_page == 16) {
    if (intro_fade[16] < 1) {
        intro_fade[16] += intro_fade_speed;
    }
}

//****************//
//****************//

//Mission
if (intro_page >= 17 && intro_page <= 20) {
    if (intro_fade[17] < 1) {
        intro_fade[17] += intro_fade_speed;
    }
}

//Mission
if (intro_page >= 18 && intro_page <= 20) {
    if (intro_fade[18] < 1) {
        intro_fade[18] += intro_fade_speed;
    }
}

//Mission
if (intro_page == 19 || intro_page == 20) {
    if (intro_fade[19] < 1) {
        intro_fade[19] += intro_fade_speed;
    }
}




//<space to skip>
if (intro_page >= 20) {
    if (intro_fade[20] < 1) {
        intro_fade[20] += intro_fade_speed;
    }
}








  //*******************//
 //**** draw text ****//
//*******************//

for (i = 1; i < array_length_1d(intro_fade); i++) {
    draw_set_alpha(intro_fade[i]);
    draw_text(intro_x[i], intro_y[i], intro_manus[i]);
}










//Reset alpha to show future objects
draw_set_alpha(1);

