if keyboard_check_pressed(ord("3")){
    if (alarm[0] < 0){
        alarm[0]=60;
    }
    
instance_create(350,200,obj_PDA_folder)
instance_create(350,500,obj_PDA_player);
}
