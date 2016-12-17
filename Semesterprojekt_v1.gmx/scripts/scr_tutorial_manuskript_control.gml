draw_set_halign(fa_left);


draw_set_color(tuto_col_nar);
draw_set_font(tuto_fnt_nar);

/*
draw_text(50,  50, "move: " + string(global.permission_move));
draw_text(50, 100, "listen: " + string(global.permission_listen));
draw_text(50, 150, "doors: " + string(global.permission_doors));
draw_text(50, 200, "pda: " + string(global.permission_pda));
draw_text(50, 250, "attack: " + string(global.permission_attack));

draw_text(250,  50, "global.tutorial_state: " + string(global.tutorial_state));
draw_text(250, 100, "tutorial_step: " + string(tutorial_step));
*/

//1
if (global.tutorial_state == 1) {
    scr_tutorial_chapter_1();
}

//2
if (global.tutorial_state == 2) {
    scr_tutorial_chapter_2();
}

//3
if (global.tutorial_state == 3) {
    scr_tutorial_chapter_3();
}

//skip
if (global.tutorial_state == 4) {
    global.tutorial_state = 5;
    tutorial_step = 0;
}

//5
if (global.tutorial_state == 5) {
    scr_tutorial_chapter_5();
}

//6
if (global.tutorial_state == 6) {
    scr_tutorial_chapter_6();
}

//7
if (global.tutorial_state == 7) {
    scr_tutorial_chapter_7();
}

//8
if (global.tutorial_state == 8) {
    scr_tutorial_chapter_8();
}

//skip
if (global.tutorial_state == 9) {
    global.tutorial_state = 10;
    tutorial_step = 0;
}

//10
if (global.tutorial_state == 10) {
    scr_tutorial_chapter_10();
}

//11
if (global.tutorial_state == 11) {
    scr_tutorial_chapter_11();
}

//12
if (global.tutorial_state == 12) {
    scr_tutorial_chapter_12();
}

//skip rest
if (global.tutorial_state > 12) {
    room_goto(rm_MenuCabinet);
}




//next step if tutorial is running.
if(global.tuto_running){
    tutorial_step ++;
}

