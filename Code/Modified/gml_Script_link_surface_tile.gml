var tbg;
if (global.timeofday == 0)
    tbg = tlSurface1
if (global.timeofday == 1)
    tbg = tlSurface1Twilight
if (global.timeofday == 2)
    tbg = 17
tileid = tile_add(tbg, argument0, argument1, 16, 16, x, y, -150)
