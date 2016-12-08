
if (walk_from_door) {
    if !instance_exists(obj_vent_door_remove) {
        instance_create(0, 0, obj_vent_door_remove);
    }
} else {
    instance_create(0, 0, obj_vent_ani_start);
}

