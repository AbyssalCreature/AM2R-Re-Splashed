m1 = string(global.map[global.mapposx, global.mapposy])
m2 = string(global.map[(global.mapposx - 2), (global.mapposy - 1)])
m3 = string(global.map[(global.mapposx - 1), (global.mapposy - 1)])
m4 = string(global.map[global.mapposx, (global.mapposy - 1)])
m5 = string(global.map[(global.mapposx + 1), (global.mapposy - 1)])
m6 = string(global.map[(global.mapposx + 2), (global.mapposy - 1)])
m7 = string(global.map[(global.mapposx - 2), global.mapposy])
m8 = string(global.map[(global.mapposx - 1), global.mapposy])
m9 = string(global.map[(global.mapposx + 1), global.mapposy])
m10 = string(global.map[(global.mapposx + 2), global.mapposy])
m11 = string(global.map[(global.mapposx - 2), (global.mapposy + 1)])
m12 = string(global.map[(global.mapposx - 1), (global.mapposy + 1)])
m13 = string(global.map[global.mapposx, (global.mapposy + 1)])
m14 = string(global.map[(global.mapposx + 1), (global.mapposy + 1)])
m15 = string(global.map[(global.mapposx + 2), (global.mapposy + 1)])
dm1 = global.dmap[global.mapposx, global.mapposy]
dm2 = global.dmap[(global.mapposx - 2), (global.mapposy - 1)]
dm3 = global.dmap[(global.mapposx - 1), (global.mapposy - 1)]
dm4 = global.dmap[global.mapposx, (global.mapposy - 1)]
dm5 = global.dmap[(global.mapposx + 1), (global.mapposy - 1)]
dm6 = global.dmap[(global.mapposx + 2), (global.mapposy - 1)]
dm7 = global.dmap[(global.mapposx - 2), global.mapposy]
dm8 = global.dmap[(global.mapposx - 1), global.mapposy]
dm9 = global.dmap[(global.mapposx + 1), global.mapposy]
dm10 = global.dmap[(global.mapposx + 2), global.mapposy]
dm11 = global.dmap[(global.mapposx - 2), (global.mapposy + 1)]
dm12 = global.dmap[(global.mapposx - 1), (global.mapposy + 1)]
dm13 = global.dmap[global.mapposx, (global.mapposy + 1)]
dm14 = global.dmap[(global.mapposx + 1), (global.mapposy + 1)]
dm15 = global.dmap[(global.mapposx + 2), (global.mapposy + 1)]
if global.mapmarker
{
    moffx = (global.mapmarkerx - global.mapposx)
    moffy = (global.mapmarkery - global.mapposy)
}
