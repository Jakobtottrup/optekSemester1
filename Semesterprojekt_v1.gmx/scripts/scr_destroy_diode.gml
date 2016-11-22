if (instance_exists(obj_button_blink_horiz)) //is the instance  here?
{
    //check if instance x is within bounds of the room
    if obj_button_blink_horiz.x  >= (room_width -170)
    {
      instance_destroy();
    }
}

