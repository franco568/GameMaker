///src_spawn_coin(x, y)
/* function to create a coin from spawn, see obj_control */
var x0 = argument0;
var y0 = argument1;

var inst = instance_create(x0, y0, obj_coin);
inst.from_spawn = true;
