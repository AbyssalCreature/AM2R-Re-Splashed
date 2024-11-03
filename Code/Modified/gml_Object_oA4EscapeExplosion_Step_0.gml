image_xscale += 0.07
image_yscale += 0.07
if (exploff > 496)
{
    make_explosion1big(exploff, (80 + random(64)))
    exploff -= 16
}
else if (global.playerhealth > 5)
    global.playerhealth *= 0.98
