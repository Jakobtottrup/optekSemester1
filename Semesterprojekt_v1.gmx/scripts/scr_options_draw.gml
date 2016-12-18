//Draws the gamma level number//

draw_set_font (font_customize);
draw_set_colour(c_dkgray);
draw_set_halign(fa_center);
draw_text(528, 607, global.option_gamma);


// Draws text for gamma level//
draw_set_font(font_customize_text);
draw_set_colour(c_black);
draw_text(525, 750, string("Sets the light level in the ventilation duct"));


pos_x = 900;
pos_y = 200;
scale = 1.3;


//draw preview in optionmenu
draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(pos_x, pos_y, pos_x+540, pos_y+540, false)
draw_sprite_ext(spr_vent_07_exit_straigth, 0, pos_x, pos_y, scale, scale, 0, c_white, 1);

//draw black filter
draw_set_alpha(global.vent_blend) //sets alpha blend/opacity 
draw_rectangle(pos_x, pos_y, pos_x+(540*scale), pos_y+(540*scale), false)
draw_set_alpha(1) //resets opacity
