//disables all laser grids on successful hack
//called by obj_monitor_bluescreen create event
with(obj_vent_door){
    instance_change(obj_vent_door_remove, true);
}
with(obj_door_open){
    instance_change(obj_door_closed, true);
}
