if (distance_to_object(oCharacter) < 160 && (!global.spectator))
    event_user(0)
if (global.metdead[myid] == 1)
{
    repeat (10)
    {
        expl = instance_create(((x - 16) + random(32)), ((y - 16) + random(32)), oFXAnimSpark)
        expl.image_speed = (0.5 + random(0.5))
        expl.additive = 0
        expl.sprite_index = sExpl1
        expl.direction = random(360)
        expl.speed = (2 + random(1))
    }
    make_explosion4(x, y)
    instance_create(x, y, oScreenFlash)
    sfx_play(sndMGammaExpl)
    sfx_play(sndMissileExpl)
    if (global.monstersalive == 0)
        mus_current_fadein()
    if ((oControl.mod_insanitymode == 0 || (global.difficulty < 2 && oControl.mod_insanitymode == 1)) && (!global.spectator))
        monster_spawn_powerups(x, y, 1, 1)
    instance_destroy()
}
