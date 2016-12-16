draw_set_halign(fa_left);

//narrator
tuto_col_nar = c_lime;
tuto_fnt_nar = fnt_tutorial;

//thief
tuto_col_player = c_red;
tuto_fnt_player = fnt_tutorial;

//guard
tuto_col_guard = c_maroon;
tuto_fnt_guard = fnt_tutorial;


  //******  1 ******//
 //** thief view **//
//****************//

draw_set_color(tuto_col_nar);
draw_set_font(tuto_fnt_nar);

draw_text(50,  50, "move: " + string(global.permission_move));
draw_text(50, 100, "listen: " + string(global.permission_listen));
draw_text(50, 150, "doors: " + string(global.permission_doors));
draw_text(50, 200, "pda: " + string(global.permission_pda));
draw_text(50, 250, "attack: " + string(global.permission_attack));

draw_text(250,  50, "global.tutorial_state: " + string(global.tutorial_state));
draw_text(250, 100, "tutorial_page: " + string(tutorial_page));



if (global.tutorial_state == 1) {
    draw_text(50, 400, "Bla bla thief info");
}

if (global.tutorial_state == 2) {
    draw_text(50, 400, "thief task movement");
}

if (global.tutorial_state == 3) {
    draw_text(50, 400, "get to the goal");
}

if (global.tutorial_state == 5) {
    draw_text(50, 400, "bla bla guard info");
}

if (global.tutorial_state == 6) {
    draw_text(50, 400, "guard task listen");
}

if (global.tutorial_state == 7) {
    draw_text(50, 400, "guard task doors");
}

if (global.tutorial_state == 8) {
    draw_text(50, 400, "thief task win pda");
}

if (global.tutorial_state == 10) {
    draw_text(50, 400, "bla bla guard");
}

if (global.tutorial_state == 11) {
    draw_text(50, 400, "guard task kill or lose");
}

if (global.tutorial_state == 12) {
    draw_text(50, 400, "bla bla end info");
}

