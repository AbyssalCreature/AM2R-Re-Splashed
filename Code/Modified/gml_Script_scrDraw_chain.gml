var dist, dir;
dist = ceil((point_distance(argument2, argument3, argument4, argument5) / argument6))
dir = point_direction(argument2, argument3, argument4, argument5)
for (i = dist; i < (dist * argument6); i += dist)
    draw_sprite(argument0, argument1, (argument2 + lengthdir_x(i, dir)), (argument3 + lengthdir_y(i, dir)))
