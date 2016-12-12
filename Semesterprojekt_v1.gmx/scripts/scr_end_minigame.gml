if (!instance_exists(obj_PDA_folder) && !instance_exists(obj_PDA_paper)) {
    with(obj_PDA) instance_destroy();
    with(obj_PDA_frame) instance_destroy();
    with(obj_PDA_controller) instance_destroy();
    with(obj_PDA_player) instance_destroy();
    global.player_movement = true;
}
