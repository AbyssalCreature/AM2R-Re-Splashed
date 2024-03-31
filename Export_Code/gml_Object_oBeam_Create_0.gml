if (y > global.waterlevel && global.waterlevel != 0)
    inwater = 1
else
    inwater = 0
time = 0
dohit = 1
smissile = 0
lifetime = 10000
if (global.shorttraptimer > 0)
    lifetime = 10
