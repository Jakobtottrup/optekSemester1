
vol = 0;
time = 0;

if(distance_to_object(obj_player_seb) > global.maze_steplength*4){
    vol = 0;
    audio_sound_gain(snd_ventilation_test, vol, time);
    if !audio_is_playing(snd_ventilation_test){
        audio_play_sound(snd_ventilation_test, 1, false);
    }
}else if (global.maze_steplength < distance_to_object(obj_player_seb) && distance_to_object(obj_player_seb) < global.maze_steplength*3){
    vol = 0.5;
    audio_sound_gain(snd_ventilation_test, vol, time);
    if !audio_is_playing(snd_ventilation_test){
        audio_play_sound(snd_ventilation_test, 1, false);
    }
    global.shake_x = random_range(-10, 10);
    global.shake_y = random_range(-10, 10);

} else if (distance_to_object(obj_player_seb)< global.maze_steplength){
    vol = 1;
    audio_sound_gain(snd_ventilation_test, vol, time);
    if !audio_is_playing(snd_ventilation_test){
        audio_play_sound(snd_ventilation_test, 1, false);
    }
    global.shake_x = random_range(-50, 50);
    global.shake_y = random_range(-50, 50);

}

//audio_sound_gain(snd_ventilation_test, vol, time);


/*
        if !instance_exists(obj_screenshake2){
        instance_create(0,0,obj_screenshake2);
    }
*/

// ======================= Below is for testing radius checks on moving diode in relation to sound volume ==================================
// ======================= Comment in/out for testing ======================================================================================

/*vol = 0;
time = 0;
if(distance_to_object(obj_player_seb) > global.maze_steplength*4){
    vol = 0;
    audio_sound_gain(snd_constant, vol, time);
    if !audio_is_playing(snd_constant){
        audio_play_sound(snd_constant, 1, false);
    }
}else if (global.maze_steplength < distance_to_object(obj_player_seb) && distance_to_object(obj_player_seb) < global.maze_steplength*3){
    vol = 0.5;
    audio_sound_gain(snd_constant, vol, time);
    if !audio_is_playing(snd_constant){
        audio_play_sound(snd_constant, 1, false);
    }
} else if (distance_to_object(obj_player_seb)< global.maze_steplength){
    vol = 1;
    audio_sound_gain(snd_constant, vol, time);
    if !audio_is_playing(snd_constant){
        audio_play_sound(snd_constant, 1, false);
    }
}
//audio_sound_gain(snd_ventilation_test, vol, time);

*/
