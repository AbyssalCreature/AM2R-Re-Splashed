var temp_randitem;
repeat (8)
{
    expl = instance_create(((x - 16) + random(32)), (y - random(32)), oFXAnimSpark)
    expl.image_speed = (0.3 + random(0.5))
    expl.additive = 0
    expl.sprite_index = sExpl1
}
make_explosion3(x, (y - 16))
instance_create(x, y, oScreenFlash)
sfx_play(sndEDeath1)
sfx_play(sndMissileExpl)
global.event[103] = x
if (oControl.mod_fusion == 0)
{
    temp_randitem = scr_itemsopen(oControl.mod_jumpball)
    if (global.item[oControl.mod_jumpball] == 0)
        instance_create(x, (y - 16), temp_randitem)
    with (oDoor)
        event_user(3)
    spawn_many_powerups(112, 96, 96, 64)
    mus_fadeout(musArachnus)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
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
