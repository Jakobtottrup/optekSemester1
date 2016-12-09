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

//****

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

//****







  //*******************//
 //**** draw text ****//
//*******************//

for (i = 1; i < array_length_1d(intro_fade); i++) {
    draw_set_alpha(intro_fade[i]);
    draw_text(room_width/2, intro_y[i], intro_manus[i]);
}





    
    
/*   

draw_set_alpha(intro_fade[1]);
draw_text(room_width/2, 140, "Semesterprojekt");

draw_set_alpha(intro_fade[2]);
draw_text(room_width/2, 200, "2016");

*/








//Reset alpha to show future objects
draw_set_alpha(1);

