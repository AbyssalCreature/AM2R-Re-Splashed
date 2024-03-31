var _temp_local_var_2;
if (state == 0 || (!global.ingame) || room == rm_transition)
{
    image_speed = 0
    exit
}
else if (pause[floor(image_index)] > 0)
{
    image_speed = 0
    image_index = floor(image_index)
    pause[_temp_local_var_2]--
}
else
    image_speed = 0.25
