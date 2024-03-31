repeat (8)
{
    expl = instance_create(((x - 16) + random(32)), (y - random(80)), oFXAnimSpark)
    expl.image_speed = (0.3 + random(0.5))
    expl.additive = 0
    expl.sprite_index = sExpl1
}
instance_create(x, y, oScreenFlash)
sfx_play(sndMissileExpl)
make_explosion4(x, y)
if (oControl.mod_fusion == 0)
{
    with (oDoor)
        event_user(3)
    spawn_many_powerups((x - 40), (y - 64), 80, 64)
    mus_current_fadein()
    with (oA8RedLightFX)
        fadeout = 1
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
}
instance_destroy()
