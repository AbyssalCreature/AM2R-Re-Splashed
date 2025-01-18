if (oControl.mod_fusion == 1 || oControl.MonsterPalettesFusionOnly == 0)
    pal_swap_set(oControl.GammaPalette, 1, 0)
if (!flashing)
{
    if (!turning)
    {
        draw_sprite_ext(sMGammaLegBA1, -1, (x + legba1x), (y + legba1y), facing, 1, (image_angle + legba1da), -1, 1)
        draw_sprite_ext(sMGammaLegBA2, -1, ((x + legba1x) + legba2x), ((y + legba1y) + legba2y), facing, 1, ((image_angle + legba1da) + legba2da), -1, 1)
        draw_sprite_ext(sMGammaLegBB1, -1, (x + legbb1x), (y + legbb1y), facing, 1, (image_angle + legbb1da), -1, 1)
        draw_sprite_ext(sMGammaLegBB2, -1, ((x + legbb1x) + legbb2x), ((y + legbb1y) + legbb2y), facing, 1, ((image_angle + legbb1da) + legbb2da), -1, 1)
    }
    draw_sprite_ext(sprite_index, -1, x, y, facing, 1, image_angle, -1, 1)
    if (!turning)
    {
        draw_sprite_ext(sMGammaLegFA1, -1, (x + legfa1x), (y + legfa1y), facing, 1, (image_angle + legfa1da), -1, 1)
        draw_sprite_ext(sMGammaLegFA2, -1, ((x + legfa1x) + legfa2x), ((y + legfa1y) + legfa2y), facing, 1, ((image_angle + legfa1da) + legfa2da), -1, 1)
        draw_sprite_ext(sMGammaLegFB1, -1, (x + legfb1x), (y + legfb1y), facing, 1, (image_angle + legfb1da), -1, 1)
        draw_sprite_ext(sMGammaLegFB2, -1, ((x + legfb1x) + legfb2x), ((y + legfb1y) + legfb2y), facing, 1, ((image_angle + legfb1da) + legfb2da), -1, 1)
    }
}
if flashing
{
    if (!turning)
    {
        draw_sprite_ext(sMGammaLegBA1, -1, (x + legba1x), (y + legba1y), facing, 1, (image_angle + legba1da), make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_sprite_ext(sMGammaLegBA2, -1, ((x + legba1x) + legba2x), ((y + legba1y) + legba2y), facing, 1, ((image_angle + legba1da) + legba2da), make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_sprite_ext(sMGammaLegBB1, -1, (x + legbb1x), (y + legbb1y), facing, 1, (image_angle + legbb1da), make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_sprite_ext(sMGammaLegBB2, -1, ((x + legbb1x) + legbb2x), ((y + legbb1y) + legbb2y), facing, 1, ((image_angle + legbb1da) + legbb2da), make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
    }
    draw_sprite_ext(sprite_index, -1, x, y, facing, 1, image_angle, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
    if (!turning)
    {
        draw_sprite_ext(sMGammaLegFA1, -1, (x + legfa1x), (y + legfa1y), facing, 1, (image_angle + legfa1da), make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_sprite_ext(sMGammaLegFA2, -1, ((x + legfa1x) + legfa2x), ((y + legfa1y) + legfa2y), facing, 1, ((image_angle + legfa1da) + legfa2da), make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_sprite_ext(sMGammaLegFB1, -1, (x + legfb1x), (y + legfb1y), facing, 1, (image_angle + legfb1da), make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_sprite_ext(sMGammaLegFB2, -1, ((x + legfb1x) + legfb2x), ((y + legfb1y) + legfb2y), facing, 1, ((image_angle + legfb1da) + legfb2da), make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
    }
    draw_set_blend_mode(bm_add)
    repeat (2)
    {
        if (!turning)
        {
            draw_sprite_ext(sMGammaLegBA1, -1, (x + legba1x), (y + legba1y), facing, 1, (image_angle + legba1da), -1, (1 - (fxtimer * 0.25)))
            draw_sprite_ext(sMGammaLegBA2, -1, ((x + legba1x) + legba2x), ((y + legba1y) + legba2y), facing, 1, ((image_angle + legba1da) + legba2da), -1, (1 - (fxtimer * 0.25)))
            draw_sprite_ext(sMGammaLegBB1, -1, (x + legbb1x), (y + legbb1y), facing, 1, (image_angle + legbb1da), -1, (1 - (fxtimer * 0.25)))
            draw_sprite_ext(sMGammaLegBB2, -1, ((x + legbb1x) + legbb2x), ((y + legbb1y) + legbb2y), facing, 1, ((image_angle + legbb1da) + legbb2da), -1, (1 - (fxtimer * 0.25)))
        }
        draw_sprite_ext(sprite_index, -1, x, y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
        if (!turning)
        {
            draw_sprite_ext(sMGammaLegFA1, -1, (x + legfa1x), (y + legfa1y), facing, 1, (image_angle + legfa1da), -1, (1 - (fxtimer * 0.25)))
            draw_sprite_ext(sMGammaLegFA2, -1, ((x + legfa1x) + legfa2x), ((y + legfa1y) + legfa2y), facing, 1, ((image_angle + legfa1da) + legfa2da), -1, (1 - (fxtimer * 0.25)))
            draw_sprite_ext(sMGammaLegFB1, -1, (x + legfb1x), (y + legfb1y), facing, 1, (image_angle + legfb1da), -1, (1 - (fxtimer * 0.25)))
            draw_sprite_ext(sMGammaLegFB2, -1, ((x + legfb1x) + legfb2x), ((y + legfb1y) + legfb2y), facing, 1, ((image_angle + legfb1da) + legfb2da), -1, (1 - (fxtimer * 0.25)))
        }
    }
    draw_set_blend_mode(bm_normal)
}
if (state == 8 && drawefangs)
{
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sMGammaFangs, -1, x, y, facing, 1, image_angle, -1, 1)
    draw_set_blend_mode(bm_normal)
}
shader_reset()
