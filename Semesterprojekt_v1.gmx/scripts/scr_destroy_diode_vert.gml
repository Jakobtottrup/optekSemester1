if (instance_exists(obj_button_blink_vert)) //is the instance  here?
{
    //check if instance x is within bounds of the room
    if obj_button_blink_vert.y  <= 150
    {
      instance_destroy();
      view_xview = 0;
      view_yview = 0;
    }
}

