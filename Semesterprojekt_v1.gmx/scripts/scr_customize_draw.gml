    //Drawing the x and y variables//
draw_set_font (font_customize);
draw_set_colour(c_dkgray);
draw_set_halign(fa_center);
draw_text(255, 400, global.customize_grid_y);
draw_text(975, 800, global.customize_grid_x);



//Drawing grid//
var grid_width = 1150; //x//
var grid_hight = 600; //y//

    //Draw Vertical lines//
x = 390;
y = 180;

for(i = 0; i < global.customize_grid_x; i++) {
    draw_line_width_colour(x, y, x, y + grid_hight, 10, c_black, c_black);
    x += grid_width / (global.customize_grid_x - 1);
}

    //Draw horisontal lines//

x = 390;
y = 180;

for(i = 0; i < global.customize_grid_y; i++) {
    draw_line_width_colour(x, y, x + grid_width, y, 10, c_black, c_black);
    y += grid_hight / (global.customize_grid_y - 1);
}

    //Draw Goal variable in Customize menu//

draw_text(1665, 275, global.custom_num_goal);
    
    //Draw Door variable in Customize menu//

draw_text(1665, 627, global.custom_num_door);

    //Draw text in Customize menu//

draw_set_font(font_customize_text);
draw_set_colour(c_black);
draw_text(1665, 532, string("Number of doors"));

draw_text(1665, 180, string("Number of goals"));
