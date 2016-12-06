draw_set_colour(c_lime);
draw_set_font(fnt_tutorial);
draw_set_halign(fa_center);



if (tutorial_page == 0) {
    draw_text(1200, 100, "This is the first page");
}

if (tutorial_page == 1) {
    draw_text(1200, 140, "And this is something else");
}


