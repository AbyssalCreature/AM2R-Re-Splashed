repeat (10)
{
    expl = instance_create(((x - 16) + random(32)), ((y - 16) + random(32)), oFXAnimSpark)
    expl.image_speed = (0.5 + random(0.5))
    expl.additive = 0
    expl.sprite_index = sExpl1
    expl.direction = random(360)
    expl.speed = (2 + random(1))
}
with (tail)
    instance_destroy()
make_explosion4(x, y)
instance_create(x, y, oScreenFlash)
sfx_play(sndMissileExpl)
mus_current_fadein()
if (oControl.mod_insanitymode == 0 || (global.difficulty < 2 && oControl.mod_insanitymode == 1))
{
    if (damagedealt > givebackhp)
        damagedealt = givebackhp
    monster_spawn_powerups(x, y, floor((damagedealt / 20)), floor(((starthealth / 10) / 2)))
}
instance_destroy()
