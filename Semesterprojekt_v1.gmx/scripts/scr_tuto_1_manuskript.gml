tutorial_text_color = c_lime;
draw_set_colour(tutorial_text_color);
draw_set_font(fnt_tutorial);
draw_set_halign(fa_center);




if (tutorial_page == 1) {
    draw_text(1300, 140, "Get the documents before someone finds you");
}

if (tutorial_page == 2) {
    draw_set_colour(c_white);
    draw_text(320, 920, "< Arrowkeys enabled >");
}

if (tutorial_page == 2 || tutorial_page == 3) {
    draw_set_colour(tutorial_text_color);
    draw_text(1300, 140, "Try moving around");
}

if (tutorial_page == 3) {
    draw_text(1300, 180, "Tasks");
        //draw_healthbar(left, top, right, bottom, amount, backcol, mincol, maxcol, direction, showback, showborder);
        
        draw_healthbar(1100, 300, 1500, 350, global.tutorial_task[0], c_black, c_red, c_green, 0, false, false);
    draw_text(1300, 300, "Move forward");

        draw_healthbar(1100, 400, 1500, 450, global.tutorial_task[1], c_black, c_red, c_green, 0, false, false);
    draw_text(1300, 400, "Change direction");
    
        draw_healthbar(1100, 500, 1500, 550, global.tutorial_task[2], c_black, c_red, c_green, 0, false, false);
    draw_text(1300, 500, "Turn around");
    
        draw_healthbar(1100, 600, 1500, 650, global.tutorial_task[3], c_black, c_red, c_green, 0, false, false);
    draw_text(1300, 600, "Move backwards");
}
