//Draws the gamma level number//

draw_set_font (font_customize);
draw_set_colour(c_dkgray);
draw_text(550 - (string_width(string(global.option_gamma)) / 2), 610, global.option_gamma);


// Draws text for gamma level//
draw_set_font(font_customize_text);
draw_set_colour(c_black);
draw_text(525, 750, string("Sets the light level in the ventilation shaft"));
