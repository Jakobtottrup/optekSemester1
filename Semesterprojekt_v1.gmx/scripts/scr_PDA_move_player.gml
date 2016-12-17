///MOVE PLAYER

with(obj_PDA_player) {
    if keyboard_check(vk_up) {vspeed = -7}
    if keyboard_check_released(vk_up) {vspeed = 0}
    
    if keyboard_check(vk_down) {vspeed = 7}
    if keyboard_check_released(vk_down) {vspeed = 0}
    
    if keyboard_check(vk_left) {hspeed = -7}
    if keyboard_check_released(vk_left) {hspeed = 0}
    
    if keyboard_check(vk_right) {hspeed = 7}
    if keyboard_check_released(vk_right) {hspeed = 0}
    
    if keyboard_check(vk_nokey) {speed = 0}
}
