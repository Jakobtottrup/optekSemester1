//Draws the gamma level number//

draw_set_font (font_customize);
draw_set_colour(c_dkgray);
draw_set_halign(fa_center);
draw_text(528, 607, global.option_gamma);


// Draws text for gamma level//
draw_set_font(font_customize_text);
draw_set_colour(c_black);
draw_text(525, 750, string("Sets the light level in the ventilation shaft"));
