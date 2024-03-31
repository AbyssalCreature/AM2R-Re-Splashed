repeat (8)
{
    expl = instance_create(((x - 16) + random(32)), (y - random(80)), oFXAnimSpark)
    expl.image_speed = (0.3 + random(0.5))
    expl.additive = 0
    expl.sprite_index = sExpl1
}
make_explosion3(x, (y - 40))
repeat (30)
    instance_create(x, (y - 50), oDebris)
instance_create(x, y, oScreenFlash)
sfx_play(sndRobotExpl)
sfx_play(sndMissileExpl)
with (mycam)
    instance_destroy()
with (wings)
    instance_destroy()
if (oControl.mod_fusion == 0)
{
    spawn_many_powerups((x - 64), (y - 120), 120, 128)
    mus_current_fadein()
    with (oDoor)
        event_user(3)
}
else
{
    core = instance_create(mean(bbox_left, bbox_right), mean(bbox_top, bbox_bottom), oCoreX)
    core.lastBossX = x
    core.lastBossY = y
    core.lastBossSprite = sprite_index
    core.lastBossFrame = image_index
    core.lastBossAngle = image_angle
    core.lastBossFacing = facing
    core.lastYscale = image_yscale
    core.lastBossDepth = depth
    instance_create(x, y, oTorizoCoreXCam)
}
instance_destroy()
