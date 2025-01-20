if (global.timeofday == 0)
    return 257;
else if (global.timeofday == 1 && global.lavastate <= 7)
    return 273;
else if (global.lavastate > 7)
    return 423;
