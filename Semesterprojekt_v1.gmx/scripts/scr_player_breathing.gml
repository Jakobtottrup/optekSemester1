
//init
breath_height = 24;
breath_width = 10;
breath_tilt = 0.4;


//fix player breath


//if breathing too slow
if (global.player_breath_cycle_steps > player_breath_cycle_max) {
    //set cycle to minimum
    global.player_breath_cycle_steps = player_breath_cycle_max;
//else
} else {
    //breath slower
    global.player_breath_cycle_steps += player_breath_fitness;
}

//if breathing too fast
if (global.player_breath_cycle_steps < player_breath_cycle_min) {
    //set cycle to max
    global.player_breath_cycle_steps = player_breath_cycle_min;
}




//the player is breathing using a sine curve
//a full period is 2*pi

//radians = degrees * pi / 180

/*
sines curve
half height * sin( half length )

length = 2 pi

f(t) = height/2 * sin( ((2*pi) / cycle_length) * t )
*/

//y - koordinat
global.player_actual_view_y = (breath_height / 2) * sin(((2 * pi) / global.player_breath_cycle_steps) * player_breath_count);

//x - koordinat
global.player_actual_view_x = -((breath_width / 2) * sin(((2 * pi) / global.player_breath_cycle_steps) * player_breath_count));

//differentieringen af en sinuskurve bliver en cosinuskurve med de samme variabler.
//hvis kameraret skal hælde i den ene retning ved stigning, og modsat ved fald

//retning
global.player_actual_view_dir = breath_tilt * cos(((2 * pi) / global.player_breath_cycle_steps) * player_breath_count);



//change count, as in changing the x-value for the function
player_breath_count ++;
if (player_breath_count > global.player_breath_cycle_steps) {
    player_breath_count = 0;
}





