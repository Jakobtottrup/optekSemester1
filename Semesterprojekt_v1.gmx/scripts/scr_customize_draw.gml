//Drawing the x and y variables//
draw_set_font (font_customize);
draw_set_colour(c_dkgray);
draw_text (270-(string_width(string(global.customize_grid_y))/4), 400, global.customize_grid_y);
draw_text (995-(string_width(string(global.customize_grid_x))/3), 800, global.customize_grid_x);



//Drawing grid//
var grid_width=1150 //x//
var grid_hight=600 //y//

    //Draw Vertical lines//
x=390
y=180

for(i=0; i<global.customize_grid_x; i++){
draw_line_width_colour(x,y,x,y+grid_hight,10,c_black,c_black);
x+=grid_width/(global.customize_grid_x-1);
}

    //Draw horisontal lines//

x=390
y=180

for(i=0; i<global.customize_grid_y; i++){
draw_line_width_colour(x,y,x+grid_width,y,10,c_black,c_black);
y+=grid_hight/(global.customize_grid_y-1);
}

    //Draw Goal variable in room//

draw_text (1685-(string_width(string(global.custom_num_goal))/2), 275, global.custom_num_goal);
    
    //Draw Door variable in room//

draw_text (1685-(string_width(string(global.custom_num_door))/2), 627, global.custom_num_door);

//Draw test in Custumize menu//

draw_set_font(font_customize_text);
draw_set_colour(c_black);
draw_text (1668,180, string("Number of doors"));

draw_text (1668,532, string("Number of goals"));
