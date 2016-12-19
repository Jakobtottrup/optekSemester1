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
    black_box_alpha = 0;
    black_fade_out = 0;
    
    thief_button_x = 160;
    thief_text_x   = 420;
    
    guard_button_x = 1060;
    guard_text_x   = 1300;
}


//fade control
if (black_box_alpha < 1) {
    black_box_alpha += 0.02;
}

if (tutorial_step > 400) {
    if (black_fade_out < 1) {
        black_fade_out += 0.01;
    }
}

//draw background
draw_set_color(c_black);
draw_set_alpha(black_box_alpha);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_alpha(black_box_alpha / 2);
draw_sprite(spr_black_splitscreen, 0, 0, 0);



  //****************//
 //** Chapter 12 **//
//****************//

draw_set_alpha(1);

draw_set_color(tuto_col_pda);
draw_set_font(tuto_fnt_pda);

draw_set_halign(fa_center);


//** thief info **//

if (tutorial_step > 60 && tutorial_step < 10000) {
    draw_text(thief_text_x, 240, "Thief");
}

if (tutorial_step > 80 && tutorial_step < 10000) {
    draw_text(thief_button_x, 340, "2");
    draw_text(thief_text_x, 340, "nightvision");
}

if (tutorial_step > 90 && tutorial_step < 10000) {
    draw_text(thief_button_x, 390, "spacebar");
    draw_text(thief_text_x, 390, "pda hack device");
}

//arrow keys
if (tutorial_step > 110 && tutorial_step < 10000) {
    draw_text(thief_button_x, 510, "arrow keys");
}

if (tutorial_step > 120 && tutorial_step < 10000) {
    draw_text(thief_button_x, 560, "up");
    draw_text(thief_text_x, 560, "forward");
}

if (tutorial_step > 130 && tutorial_step < 10000) {
    draw_text(thief_button_x, 610, "down");
    draw_text(thief_text_x, 610, "backwards");
}

if (tutorial_step > 140 && tutorial_step < 10000) {
    draw_text(thief_button_x, 660, "sides");
    draw_text(thief_text_x, 660, "take a turn");
}

if (tutorial_step > 150 && tutorial_step < 10000) {
    draw_text(thief_text_x, 700, "turn around");
}




//** guard info **//

if (tutorial_step > 200 && tutorial_step < 10000) {
    draw_text(guard_text_x, 240, "Guard");
}

//left click
if (tutorial_step > 220 && tutorial_step < 10000) {
    draw_text(guard_button_x, 340, "left click");
    draw_text(guard_text_x, 340, "listen");
}

if (tutorial_step > 230 && tutorial_step < 10000) {
    draw_text(guard_text_x, 380, "doors");
}

//right click
if (tutorial_step > 250 && tutorial_step < 10000) {
    draw_text(guard_button_x, 500, "right click");
    draw_text(guard_text_x, 500, "attack");
}







//draw fade out
draw_set_color(c_black);
draw_set_alpha(black_fade_out);
draw_rectangle(0, 0, room_width, room_height, false);



//END THIS CHAPTER
if (tutorial_step > 500) {
    global.tutorial_state = 13;
    tutorial_step = 0;
}
