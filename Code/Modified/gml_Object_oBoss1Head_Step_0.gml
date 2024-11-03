action_inherited()
if (state == 0)
{
    if (statetime == 90)
    {
        mus_play(musAncientGuardian)
        oMusicV2.bossbgm = 263
    }
    if (statetime > 60 && statetime <= 92)
    {
        tile_layer_shift(-99, -1, 0)
        tile_layer_shift(-98, 1, 0)
    }
    if (statetime > 120 && image_alpha < 1)
        image_alpha += 0.05
    if (statetime == 120)
        sfx_play(sndBoss1Appear)
    if (statetime > 150 && y < 64)
        y += 0.5
    if (statetime == 150)
        scan_log(32, get_text("ScanEvents", "ScanMechanism"), 180, 0)
    if (statetime == 210)
    {
        quake = instance_create(0, 0, oQuake)
        quake.delay = 0
        quake.duration = 10
        quake.intensity = 2
    }
    if (statetime > 220 && floor(image_index) < 5)
        image_index += 0.2
    if (statetime == 280)
    {
        state = 1
        statetime = 0
        canbehit = 1
        alarm[0] = 120
        image_index = 5
    }
}
if (state == 1)
{
    hitbeam = 1
    hitmissile = 1
    hitbomb = 1
    hitpbomb = 1
    if (image_index > 5)
        image_index -= 0.5
    if (x > oCharacter.x)
        hspeed -= 0.1
    if (x < oCharacter.x)
        hspeed += 0.1
    if (x < edge_l && hspeed < 0)
        hspeed = 0
    if (x > edge_r && hspeed > 0)
        hspeed = 0
    if (hspeed > 3)
        hspeed = 3
    if (hspeed < -3)
        hspeed = -3
    if (myhealth < 600)
    {
        edge_l = 80
        edge_r = 240
        phase = 1
        movetime = 90
    }
    if (myhealth < 500)
    {
        edge_l = 96
        edge_r = 224
        phase = 2
        movetime = 70
    }
    if (myhealth < 450)
    {
        edge_l = 112
        edge_r = 208
        phase = 3
        movetime = 60
    }
    if (myhealth < 300)
    {
        edge_l = 128
        edge_r = 192
        phase = 4
        movetime = 50
    }
    if (myhealth < 150)
    {
        edge_l = 144
        edge_r = 176
        phase = 5
        movetime = 30
    }
}
if (state == 2)
{
    speed = 0
    hitbeam = 0
    hitmissile = 0
    hitbomb = 0
    hitpbomb = 0
    if (statetime == 1)
    {
        attack = floor(random(4))
        if (phase >= 4)
        {
            if (attack == 0)
                attack = 2
        }
    }
    if (image_index < 9)
        image_index += 0.25
    if (statetime == 5)
    {
        eyes = instance_create(x, y, oBoss1Eyes)
        eyes.image_index = attack
        if (attack == 0)
            sfx_play(sndBoss1Eyes2)
        if (attack == 1)
            sfx_play(sndBoss1Eyes1)
        if (attack == 2)
            sfx_play(sndBoss1Eyes4)
        if (attack == 3)
            sfx_play(sndBoss1Eyes3)
    }
    if (statetime == 80)
    {
        if (attack == 0)
        {
            instance_create(x, (y + 12), oBoss1FBall)
            sfx_play(sndBoss1FBall)
        }
        if (attack == 1)
        {
            prj1 = instance_create((x + 4), (y + 18), oBoss1FBall2)
            prj2 = instance_create((x - 4), (y + 18), oBoss1FBall2)
            prj3 = instance_create((x + 4), (y + 18), oBoss1FBall2)
            prj4 = instance_create((x - 4), (y + 18), oBoss1FBall2)
            prj5 = instance_create((x + 4), (y + 18), oBoss1FBall2)
            prj6 = instance_create((x - 4), (y + 18), oBoss1FBall2)
            prj1.hspeed = 3
            prj2.hspeed = -3
            prj3.hspeed = 6
            prj4.hspeed = -6
            prj5.hspeed = 9
            prj6.hspeed = -9
            sfx_play(sndBoss1FBall)
        }
        if (attack == 2)
        {
            prj1 = instance_create((x + 6), (y + 11), oBoss1Beam)
            prj2 = instance_create((x - 6), (y + 11), oBoss1Beam)
            prj1.image_xscale = -1
            sfx_play(sndBoss1Laser)
        }
        if (attack == 3)
        {
            prj1 = instance_create((x + 4), (y + 18), oBoss1FBall3)
            prj2 = instance_create((x - 4), (y + 18), oBoss1FBall3)
            prj3 = instance_create((x + 4), (y + 18), oBoss1FBall3)
            prj4 = instance_create((x - 4), (y + 18), oBoss1FBall3)
            prj5 = instance_create((x + 4), (y + 18), oBoss1FBall3)
            prj6 = instance_create((x - 4), (y + 18), oBoss1FBall3)
            prj1.hspeed = 0.4
            prj1.time = 60
            prj2.hspeed = -0.4
            prj2.time = 70
            prj3.hspeed = 1.2
            prj3.time = 80
            prj4.hspeed = -1.2
            prj4.time = 90
            prj5.hspeed = 2
            prj5.time = 100
            prj6.hspeed = -2
            prj6.time = 110
            sfx_play(sndBoss1FBall)
        }
    }
    if (statetime == 120)
    {
        state = 1
        alarm[0] = 90
    }
}
if (state == 100)
{
    speed = 0
    canbehit = 0
    if (statetime == 1)
    {
        alarm[1] = 1
        sfx_play(sndBoss1Death)
        with (wall1)
            instance_destroy()
        with (wall2)
            instance_destroy()
        with (wheel)
            instance_destroy()
        with (block1)
            event_user(0)
        with (block2)
            event_user(0)
        with (107633)
            instance_destroy()
        global.event[51] = 1
        mus_fadeout(musAncientGuardian)
        oMusicV2.bossbgm = 0
        mus_current_fadein()
    }
    if (statetime == 250)
    {
        repeat (10)
        {
            expl = instance_create(((x - 16) + random(32)), ((y - 16) + random(32)), oFXAnimSpark)
            expl.image_speed = (0.5 + random(0.5))
            expl.additive = 0
            expl.sprite_index = sExpl1
            expl.direction = (180 + random(180))
            expl.speed = (2 + random(1))
        }
        repeat (10)
            make_explosion3((x + random_range(-30, 30)), (y + random_range(-30, 30)))
        repeat (60)
            instance_create(x, (y + 28), oDebris)
        spawn_many_powerups(128, 80, 64, 64)
        instance_create(x, y, oScreenFlash)
        sfx_play(sndBoss1Stomp)
        sfx_play(sndSMissileExpl)
        quake = instance_create(0, 0, oQuake)
        quake.delay = 0
        quake.duration = 15
        quake.intensity = 8
        instance_destroy()
    }
}
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (flashing > 0)
    flashing -= 1
