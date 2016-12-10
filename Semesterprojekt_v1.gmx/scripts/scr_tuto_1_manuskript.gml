tutorial_mission_color = c_lime;
tutorial_guard_color = c_blue;

draw_set_font(fnt_tutorial);
draw_set_halign(fa_center);

  //**********************//
 //** slow bar control **//
//**********************//

for (i = 0; i < 4; i++) {
    if (global.tutorial_task[i] > global.tutorial_task[i+6]) {
        global.tutorial_task[i+6] += 2;
    }
}








  //******************//
 //** mission text **//
//******************//

draw_set_colour(tutorial_mission_color);

if (tutorial_page == 1) {
    draw_text(1300, 140, "Get the documents before someone finds you");
}

if (tutorial_page == 2) {
    draw_set_colour(c_white);
    draw_text(320, 920, "< Arrowkeys enabled >");
    draw_set_colour(tutorial_mission_color);
}

if (tutorial_page == 2 || tutorial_page == 3) {
    draw_text(1300, 120, "Try moving around");
}

if (tutorial_page == 3) {
    draw_text(1300, 180, "Training mission");
        //draw_healthbar(left, top, right, bottom, amount, backcol, mincol, maxcol, direction, showback, showborder);
        
        draw_healthbar(1100, 300, 1500, 350, global.tutorial_task[6], c_black, c_red, c_green, 0, false, false);
    draw_text(1300, 300, "Move forward");

        draw_healthbar(1100, 400, 1500, 450, global.tutorial_task[7], c_black, c_red, c_green, 0, false, false);
    draw_text(1300, 400, "Change direction");
    
        draw_healthbar(1100, 500, 1500, 550, global.tutorial_task[8], c_black, c_red, c_green, 0, false, false);
    draw_text(1300, 500, "Turn around");
    
        draw_healthbar(1100, 600, 1500, 650, global.tutorial_task[9], c_black, c_red, c_green, 0, false, false);
    draw_text(1300, 600, "Move backwards");
}

//mission movement finished

if (tutorial_page >= 4 && tutorial_page <= 6) {
    draw_text(1300, 700, "Great job");
}

if (tutorial_page == 5 || tutorial_page == 6) {
    draw_text(1300, 760, "Now find those documents and get out of there");
}

if (tutorial_page == 6) {
    draw_text(1300, 820, "Try to locate some vent to get down in that building");
}

//goal found

if (tutorial_page == 7 || tutorial_page == 8) {
    draw_text(1300, 240, "Well, there it is");
}

draw_set_colour(tutorial_guard_color);

if (tutorial_page == 8) {
    draw_text(1650, 500, "??");
}

if (tutorial_page == 9 || tutorial_page == 10) {
    draw_text(1700, 560, "Who's there?");
}

draw_set_colour(tutorial_mission_color);

if (tutorial_page == 10) {
    draw_text(1300, 280, "Be quiet! Someone's here");
}





