draw_sprite(sprite_index, image_index, round(x), round(y))
event_inherited()
with (shield1)
    draw_self()
with (shield2)
    draw_self()
if (frozen > 0 && frozen < (freezetime * 0.2))
{
    with (shield1)
    {
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
        draw_set_blend_mode(bm_normal)
    }
    with (shield2)
    {
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
        draw_set_blend_mode(bm_normal)
    }
}
if (frozen > 0)
{
    if instance_exists(oLavaSurface)
        eyeSprite = sHalzynEyeFrozen_lava
    else
        eyeSprite = sHalzynEyeFrozen
}
else if instance_exists(oLavaSurface)
    eyeSprite = sHalzynEye_lava
else
    eyeSprite = sHalzynEye
if (instance_exists(oCharacter) && collision_line(x, y, (oCharacter.x - 1), (oCharacter.y - 16), oSolid, false, true) == -4)
    draw_sprite(eyeSprite, floor(((point_direction(x, y, (oCharacter.x - 1), (oCharacter.y - 16)) + 22.5) / 45)), round(x), round(y))
