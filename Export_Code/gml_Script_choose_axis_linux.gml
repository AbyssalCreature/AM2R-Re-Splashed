var g, axis;
for (g = 0; g <= gamepad_axis_count(global.opjoyid); g++)
{
    axis = gamepad_axis_value(global.opjoyid, g)
    if (floor(abs(linaxlast[g])) != 1)
    {
        if (abs(axis) > (global.opdeadzone / 100))
            return g;
    }
}
return -1;
