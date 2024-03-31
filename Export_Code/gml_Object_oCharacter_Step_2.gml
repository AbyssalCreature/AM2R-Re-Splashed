if (facing == RIGHT || facing == 0)
    mirror = 1
if (facing == LEFT)
    mirror = -1
draw_character_to_surface()
if global.godmode
{
    global.missiles = global.maxmissiles
    global.smissiles = global.maxsmissiles
    global.pbombs = global.maxpbombs
    global.playerhealth = global.maxhealth
}
