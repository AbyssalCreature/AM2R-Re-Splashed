var widescreen, lum, col, purple_glow, green_glow;
widescreen = oControl.widescreen
surface_set_target(surf)
draw_clear(c_white)
draw_set_blend_mode(bm_subtract)
draw_set_alpha(1)
draw_set_color(make_color_hsv(0, 0, 1))
draw_rectangle(0, 0, 660, 250, false)
with (oLight)
{
    image_blend = make_color_hsv(0, 0, (image_alpha * 255))
    draw_sprite_ext(sprite_index, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), image_xscale, image_yscale, 0, image_blend, 1)
    draw_sprite_ext(sprite_index, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), (image_xscale * -1), image_yscale, 0, image_blend, 1)
    draw_sprite_ext(sprite_index, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), image_xscale, (image_yscale * -1), 0, image_blend, 1)
    draw_sprite_ext(sprite_index, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), (image_xscale * -1), (image_yscale * -1), 0, image_blend, 1)
}
with (oBeam)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, -0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, -0.5, 0, image_blend, 1)
}
with (oMissile)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, -0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, -0.5, 0, image_blend, 1)
}
with (oBomb)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.25, 0.25, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.25, 0.25, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.25, -0.25, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.25, -0.25, 0, image_blend, 1)
}
with (oBomb2)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.25, 0.25, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.25, 0.25, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.25, -0.25, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.25, -0.25, 0, image_blend, 1)
}
with (oPickup)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.25, 0.25, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.25, 0.25, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.25, -0.25, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.25, -0.25, 0, image_blend, 1)
}
with (oMGammaElec)
    draw_sprite_ext(sGElectLight, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 1, 1, image_angle, image_blend, 1)
with (oGlowPlant1)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y - 16) - view_yview[widescreen]), 0.65, 0.65, 0, make_color_rgb(100, 100, 250), 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y - 16) - view_yview[widescreen]), -0.65, 0.65, 0, make_color_rgb(100, 100, 250), 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y - 16) - view_yview[widescreen]), 0.65, -0.65, 0, make_color_rgb(100, 100, 250), 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y - 16) - view_yview[widescreen]), -0.65, -0.65, 0, make_color_rgb(100, 100, 250), 1)
}
with (oSpikePlant)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.4, 0.4, 0, make_color_rgb(150, 150, 60), 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.4, 0.4, 0, make_color_rgb(150, 150, 60), 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.4, -0.4, 0, make_color_rgb(150, 150, 60), 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.4, -0.4, 0, make_color_rgb(150, 150, 60), 1)
}
with (oPincherFly)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.3, 0.3, 0, make_color_rgb(120, 80, 30), 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.3, 0.3, 0, make_color_rgb(120, 80, 30), 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.3, -0.3, 0, make_color_rgb(120, 80, 30), 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.3, -0.3, 0, make_color_rgb(120, 80, 30), 1)
}
with (oA3LabLight)
{
    if (image_index == 0)
    {
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 1.4, 1.4, 0, make_color_rgb(230, 230, 130), 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -1.4, 1.4, 0, make_color_rgb(230, 230, 130), 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 1.4, -1.4, 0, make_color_rgb(230, 230, 130), 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -1.4, -1.4, 0, make_color_rgb(230, 230, 130), 1)
    }
}
with (oA3LabDoor)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 32) - view_yview[widescreen]), 1, 0.4, 0, c_white, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 32) - view_yview[widescreen]), -1, 0.4, 0, c_white, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 32) - view_yview[widescreen]), 1, -0.4, 0, c_white, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 32) - view_yview[widescreen]), -1, -0.4, 0, c_white, 1)
}
with (oFXAnimSpark)
{
    if (sprite_index == sExpl1 || sprite_index == sExpl2)
    {
        lum = ((1 - ((image_index / 11) * 220)) + 35)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, 0.5, 0, make_color_rgb(lum, lum, lum), 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, 0.5, 0, make_color_rgb(lum, lum, lum), 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, -0.5, 0, make_color_rgb(lum, lum, lum), 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, -0.5, 0, make_color_rgb(lum, lum, lum), 1)
    }
}
with (oLightBug)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.25, 0.25, 0, c_white, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.25, 0.25, 0, c_white, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.25, -0.25, 0, c_white, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.25, -0.25, 0, c_white, 1)
}
with (oChargeBeamSpark1)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, -0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, -0.5, 0, image_blend, 1)
}
with (oItemBall)
{
    draw_sprite_ext(sLight0, -1, ((x + 8) - view_xview[widescreen]), ((y - 8) - view_yview[widescreen]), 0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, ((x + 8) - view_xview[widescreen]), ((y - 8) - view_yview[widescreen]), -0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, ((x + 8) - view_xview[widescreen]), ((y - 8) - view_yview[widescreen]), 0.5, -0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, ((x + 8) - view_xview[widescreen]), ((y - 8) - view_yview[widescreen]), -0.5, -0.5, 0, image_blend, 1)
}
with (oItem)
{
    draw_sprite_ext(sLight0, -1, ((x + 8) - view_xview[widescreen]), ((y - 8) - view_yview[widescreen]), 0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, ((x + 8) - view_xview[widescreen]), ((y - 8) - view_yview[widescreen]), -0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, ((x + 8) - view_xview[widescreen]), ((y - 8) - view_yview[widescreen]), 0.5, -0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, ((x + 8) - view_xview[widescreen]), ((y - 8) - view_yview[widescreen]), -0.5, -0.5, 0, image_blend, 1)
}
with (oDoor)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 32) - view_yview[widescreen]), 1, 0.4, 0, c_white, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 32) - view_yview[widescreen]), -1, 0.4, 0, c_white, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 32) - view_yview[widescreen]), 1, -0.4, 0, c_white, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 32) - view_yview[widescreen]), -1, -0.4, 0, c_white, 1)
}
with (oMOmegaFlame)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.75, 0.75, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.75, 0.75, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.75, -0.75, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.75, -0.75, 0, image_blend, 1)
}
with (oMOmega_Projectile)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 16) - view_yview[widescreen]), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 16) - view_yview[widescreen]), -1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 16) - view_yview[widescreen]), 1, -1, 0, image_blend, image_alpha)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 16) - view_yview[widescreen]), -1, -1, 0, image_blend, image_alpha)
}
with (oA8Lamp)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 4) - view_yview[widescreen]), 0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 4) - view_yview[widescreen]), -0.5, 0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 4) - view_yview[widescreen]), 0.5, -0.5, 0, image_blend, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), ((y + 4) - view_yview[widescreen]), -0.5, -0.5, 0, image_blend, 1)
    draw_sprite_ext(sA8Light, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 2, 1, 0, image_blend, 1)
    draw_sprite_ext(sA8Light, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -2, 1, 0, image_blend, 1)
}
with (oA8RedLight)
{
    col = make_color_rgb((image_alpha * 255), 0, 0)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 1, 1, 0, col, image_alpha)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -1, 1, 0, col, image_alpha)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 1, -1, 0, col, image_alpha)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -1, -1, 0, col, image_alpha)
}
with (oA6Dust)
{
    col = make_color_rgb((image_alpha * 133), (image_alpha * 189), (image_alpha * 136))
    draw_sprite_ext(sLight0, -1, round((x - view_xview[widescreen])), round((y - view_yview[widescreen])), (scale * 1.2), (scale * 1.2), 0, col, image_alpha)
    draw_sprite_ext(sLight0, -1, round((x - view_xview[widescreen])), round((y - view_yview[widescreen])), ((-scale) * 1.2), (scale * 1.2), 0, col, image_alpha)
    draw_sprite_ext(sLight0, -1, round((x - view_xview[widescreen])), round((y - view_yview[widescreen])), (scale * 1.2), ((-scale) * 1.2), 0, col, image_alpha)
    draw_sprite_ext(sLight0, -1, round((x - view_xview[widescreen])), round((y - view_yview[widescreen])), ((-scale) * 1.2), ((-scale) * 1.2), 0, col, image_alpha)
}
with (oA8RedLightFX)
    draw_background_ext(bgWhite, 0, 0, 20, 20, 0, image_blend, image_alpha)
with (oGenesisAcid)
{
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.25, 0.25, 0, c_lime, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.25, 0.25, 0, c_lime, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.25, -0.25, 0, c_lime, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.25, -0.25, 0, c_lime, 1)
}
with (oGenesisSlashProj)
{
    col = make_color_rgb(0, (image_alpha * 255), 0)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, 0.5, 0, col, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, 0.5, 0, col, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, -0.5, 0, col, 1)
    draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, -0.5, 0, col, 1)
}
with (oElderSeptogg)
{
    if (flying_sprite == 1576)
    {
        draw_sprite_ext(sLight0, -1, (xstart - view_xview[widescreen]), (((y + yy) + 21) - view_yview[widescreen]), 0.5, 0.5, 0, c_orange, 0.8)
        draw_sprite_ext(sLight0, -1, (xstart - view_xview[widescreen]), (((y + yy) + 21) - view_yview[widescreen]), -0.5, 0.5, 0, c_orange, 0.8)
        draw_sprite_ext(sLight0, -1, (xstart - view_xview[widescreen]), (((y + yy) + 21) - view_yview[widescreen]), 0.5, -0.5, 0, c_orange, 0.8)
        draw_sprite_ext(sLight0, -1, (xstart - view_xview[widescreen]), (((y + yy) + 21) - view_yview[widescreen]), -0.5, -0.5, 0, c_orange, 0.8)
    }
}
with (oXPickup)
{
    if (xtype == 1477)
    {
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.3, 0.3, 0, c_yellow, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.3, 0.3, 0, c_yellow, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.3, -0.3, 0, c_yellow, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.3, -0.3, 0, c_yellow, 1)
    }
    else if (xtype == 1478)
    {
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.3, 0.3, 0, c_lime, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.3, 0.3, 0, c_lime, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.3, -0.3, 0, c_lime, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.3, -0.3, 0, c_lime, 1)
    }
    else if (xtype == 1479)
    {
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.3, 0.3, 0, c_orange, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.3, 0.3, 0, c_orange, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.3, -0.3, 0, c_orange, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.3, -0.3, 0, c_orange, 1)
    }
    else if (xtype == 1480)
    {
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.3, 0.3, 0, c_red, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.3, 0.3, 0, c_red, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.3, -0.3, 0, c_red, 1)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.3, -0.3, 0, c_red, 1)
    }
}
with (oCoreX)
{
    if (sprite_index == sCoreXGenesis)
    {
        purple_glow = max(0, glow)
        col = make_color_rgb((purple_glow * 255), (purple_glow * 109), (purple_glow * 245))
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, 0.5, 0, col, purple_glow)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, 0.5, 0, col, purple_glow)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, -0.5, 0, col, purple_glow)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, -0.5, 0, col, purple_glow)
        green_glow = max(0, (glow * -1))
        col = make_color_rgb((green_glow * 24), (green_glow * 229), (green_glow * 60))
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, 0.5, 0, col, green_glow)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, 0.5, 0, col, green_glow)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.5, -0.5, 0, col, green_glow)
        draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.5, -0.5, 0, col, green_glow)
        if ((!instance_exists(oCoreXShell)) && (state == 0 || state == 1))
            draw_sprite_ext(sCoreXAura, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 1, 1, image_angle, image_blend, drawaura)
        with (oElectricSparkCoreX)
        {
            col = make_color_rgb((image_alpha * 72), (image_alpha * 208), (image_alpha * 232))
            draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.75, 0.75, 0, col, image_alpha)
            draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.75, 0.75, 0, col, image_alpha)
            draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.75, -0.75, 0, col, image_alpha)
            draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.75, -0.75, 0, col, image_alpha)
        }
        with (oElectricSparkCoreXShort)
        {
            col = make_color_rgb((image_alpha * 72), (image_alpha * 208), (image_alpha * 232))
            draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.75, 0.75, 0, col, image_alpha)
            draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.75, 0.75, 0, col, image_alpha)
            draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), 0.75, -0.75, 0, col, image_alpha)
            draw_sprite_ext(sLight0, -1, (x - view_xview[widescreen]), (y - view_yview[widescreen]), -0.75, -0.75, 0, col, image_alpha)
        }
    }
}
draw_set_blend_mode(bm_normal)
surface_reset_target()
