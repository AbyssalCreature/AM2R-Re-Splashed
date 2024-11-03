var pickup;
if (hp <= 0)
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
    repeat (20)
        deb = instance_create(x, (y - 8), oIceShard)
    make_explosion4(x, y)
    instance_create(x, y, oScreenFlash)
    sfx_play(sndMissileExpl)
    PlaySoundMono(sndIceShatter)
    sfx_play(sndMonsterDeath)
    global.monstersleft -= 1
    global.monstersarea -= 1
    if (global.monstersarea < 1)
        global.monstersarea = 1
    if (global.monstersleft < 1)
        global.monstersleft = 1
    global.metdead[myid] = 1
    with (oMonsterDoorControl)
        alarm[1] = 1
    pickup = choose(0, 1)
    if (pickup == 0)
    {
        if (global.missiles < global.maxmissiles && global.maxmissiles > 0)
        {
            repeat (3)
                instance_create((x + random_range(-15, 15)), (y + random_range(-15, 15)), oMPickup)
        }
        else
            pickup = 1
    }
    if (pickup == 1)
    {
        if (global.smissiles < global.maxsmissiles && global.maxsmissiles > 0)
            instance_create(x, y, oSMPickup)
    }
    if (global.playerhealth < global.maxhealth && (oControl.mod_insanitymode == 0 || (global.difficulty < 2 && oControl.mod_insanitymode == 1)))
    {
        repeat (3)
            instance_create((x + random_range(-15, 15)), (y + random_range(-15, 15)), oHPickupBig)
    }
    if (room == rm_a7b08A && instance_number(oMonster) == 1)
    {
        if (global.monstersleft != 1)
            global.monstersleft = 1
        if (global.monstersarea != 1)
            global.monstersarea = 1
        instance_create(0, 0, oBigQuakeQueen)
    }
    instance_destroy()
}
else
{
    flashing = 20
    sfx_play(sndMonsterHit)
}
