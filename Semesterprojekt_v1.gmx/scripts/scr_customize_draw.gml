//Drawing the x and y variables//
draw_set_font (font_customize);
draw_text (170-(string_width(string(global.customize_grid_y))/2), 350, global.customize_grid_y);
draw_text (1050-(string_width(string(global.customize_grid_x))/2), 860, global.customize_grid_x);

//Drawing grid//
var grid_width=1220 //x//
var grid_hight=700 //y//

    //Draw Vertical lines//
x=350
y=100

for(i=0; i<global.customize_grid_x; i++){
draw_line_width_colour(x,y,x,y+grid_hight,10,c_black,c_black);
x+=grid_width/(global.customize_grid_x-1);
}

    //Draw horisontal//

x=350
y=100

for(i=0; i<global.customize_grid_y; i++){
draw_line_width_colour(x,y,x+grid_width,y,10,c_black,c_black);
y+=grid_hight/(global.customize_grid_y-1);
}


//draw_line(350,100,350,100+700)//
//draw_line(1570,100,1570,100+700)//
//draw_line(350,100,350+1220,100)//
//draw_line(350,800,350+1220,800)//
