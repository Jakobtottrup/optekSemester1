
if (instance_exists(obj_button_sword_blink_horiz)) //is the green sword obj  here?
{
    //check if instance x-value is within bounds of the room
    if obj_button_sword_blink_horiz.x  >= (room_width -170) && instance_exists(obj_player_seb)
    {
      instance_destroy();
      if lives > 0 {
        lives--;

      }
      
      if !instance_exists(obj_sword_spin){
        if lives = 4{
            instance_create(room_width-136, 60, obj_sword_spin);
        } else if lives = 3{
            instance_create(room_width-168, 60, obj_sword_spin);
        } else if lives=2{
            instance_create(room_width-200, 60, obj_sword_spin);
        } else if lives = 1{
            instance_create(room_width-232, 60, obj_sword_spin);
        } else{
            instance_create(room_width-264, 60, obj_sword_spin);
        }
      }
    }
    
}

