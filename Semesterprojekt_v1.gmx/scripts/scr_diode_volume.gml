vol = 0;
time = 0;
if(distance_to_object(obj_player_seb) > global.maze_steplength*4){
vol = 0;
}else if (global.maze_steplength < distance_to_object(obj_player_seb) && distance_to_object(obj_player_seb) < global.maze_steplength*3){
vol = 0.5;
} else if (distance_to_object(obj_player_seb)< global.maze_steplength){
vol = 1;
}
audio_sound_gain(snd_ventilation_test, vol, time);
