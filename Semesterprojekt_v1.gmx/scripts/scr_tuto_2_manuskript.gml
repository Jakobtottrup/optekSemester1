tutorial_mission_color = c_lime;
tutorial_guard_color = c_blue;

draw_set_font(fnt_tutorial);
draw_set_halign(fa_center);


draw_text(40, 40, string(global.tutorial_state));







  //******************//
 //** mission text **//
//******************//

draw_set_colour(tutorial_mission_color);

if (tutorial_page == 0) {
    draw_text(1200, 100, "Chapter 2");
}

if (tutorial_page == 1) {
    draw_text(1200, 140, "LOOK AN ELEPHANT");
}


