//Draws the binary numbers in the nightvision googles//

draw_set_font(font_binary_NV);
draw_set_colour(c_white)

for(i=0; i<15; i++;){
    if(floor(random(2)) == 0){
        draw_text(x+(i*10),y,string(floor(random_range(0,2))));
    }
    if(floor(random(2)) == 0){
        draw_text(x+(i*10),y+15,string(floor(random_range(0,2))));
    }
    if(floor(random(2)) == 0){
        draw_text(x+(i*10),y+30,string(floor(random_range(0,2))));
    }
}

/*Draws the temperature text and then then the temperature number by either +1 or -1
(this have a 5% chance to occur, once pr step (30 times pr. sec)
the temperature have a minimum of 35 and a maximum of 43*/
if(random(100) < 5){
    if(floor(random(2)) == 0){
        if(temperature<43){
            temperature++;
        }
    } else {
        if(temperature>35){
        temperature--;
        }
    }
}

//Draws temperature and the temperature number//
draw_set_font(font_text_NV);
draw_text(x,y+45,string("Temperature:"));
draw_text(x+145,y+45,string(temperature));
