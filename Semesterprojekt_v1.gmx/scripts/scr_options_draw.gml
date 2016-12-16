//Draws the gamma level number//

draw_set_font (font_customize);
draw_set_colour(c_dkgray);
draw_text(550 - (string_width(string(global.option_gamma)) / 2), 610, global.option_gamma);


// Draws text for gamma level//
draw_set_font(font_customize_text);
draw_set_colour(c_black);
draw_text(525, 750, string("Sets the light level in the ventilation shaft"));


pos_x = 1080;
pos_y = 400;

//draw preview in optionmenu
draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(pos_x, pos_y, pos_x+540, pos_y+540, false)
draw_sprite(spr_vent_07_exit_straigth, 0, pos_x, pos_y);

//draw black filter
draw_set_alpha(global.vent_blend) //sets alpha blend/opacity 
draw_rectangle(pos_x, pos_y, pos_x+540, pos_y+540, false)
draw_set_alpha(1) //resets opacity
