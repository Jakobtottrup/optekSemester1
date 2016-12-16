/*
Sets maze section variables used for shaking the appropriate section on alarm trigger

called by obj_maze_ver_seb && obj_maze_hor_seb begin step events
*/
if (!instance_exists(obj_arrow) || shake_count == 0) {
   self.x = xstart;
   self.y = ystart;
   self.hspeed = 0;
   self.vspeed = 0;
   self.image_angle = 0;
}
