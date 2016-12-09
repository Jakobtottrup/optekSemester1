intro_page = 0;

intro_fade_speed = 0.02;





  //********************//
 //**** Manuskript ****//
//********************//

intro_manus[1]  = "Semesterprojekt";
    intro_y[1]  = 220;
    intro_x[1]  = room_width/2
    
intro_manus[2]  = "2016";
    intro_y[2]  = 320;
    intro_x[2]  = room_width/2

    
//****


intro_manus[3]  = "Asymetrisk";
    intro_y[3]  = 220;
    intro_x[3]  = room_width/2

intro_manus[4]  = "multiplayer";
    intro_y[4]  = 300;
    intro_x[4]  = room_width/2

intro_manus[5]  = "Digital prototype";
    intro_y[5]  = 690;
    intro_x[5]  = room_width/2

    
//****


intro_manus[6]  = "Produceret af";
    intro_y[6]  = 180;
    intro_x[6]  = room_width/2

//Christian
intro_manus[7]  = "Christian";
    intro_y[7]  = 340;
    intro_x[7]  = room_width/2-105

intro_manus[8]  = "Skjerning";
    intro_y[8]  = 340;
    intro_x[8]  = room_width/2+102

//Sebastian
intro_manus[9]  = "Sebastian";
    intro_y[9]  = 420;
    intro_x[9]  = room_width/2-110
    
intro_manus[10] = "Andresen";
    intro_y[10] = 420;
    intro_x[10] = room_width/2+110

//Jakob
intro_manus[11] = "Jakob";
    intro_y[11] = 500;
    intro_x[11] = room_width/2-150

intro_manus[12] = "Vierø";
    intro_y[12] = 500;
    intro_x[12] = room_width/2-20
    
intro_manus[13] = "Tøttrup";
    intro_y[13] = 500;
    intro_x[13] = room_width/2+130

//Jim
intro_manus[14] = "Jim";
    intro_y[14] = 580;
    intro_x[14] = room_width/2-207

intro_manus[15] = "Christian";
    intro_y[15] = 580;
    intro_x[15] = room_width/2-63
    
intro_manus[16] = "Pedersen";
    intro_y[16] = 580;
    intro_x[16] = room_width/2+143


//****


intro_manus[17] = "MISSION";
    intro_y[17] = 400;
    intro_x[17] = room_width/2

intro_manus[18] = "IMPOSSIBLE";
    intro_y[18] = 600;
    intro_x[18] = room_width/2
    
intro_manus[19] = "KINDA";
    intro_y[19] = 50;
    intro_x[19] = room_width/2

intro_manus[20] = "< space to skip >";
    intro_y[20] = room_height-100;
    intro_x[20] = room_width/2







//reset fade
for (i = 0; i < array_length_1d(intro_manus); i++) {
    intro_fade[i] = 0;
}
