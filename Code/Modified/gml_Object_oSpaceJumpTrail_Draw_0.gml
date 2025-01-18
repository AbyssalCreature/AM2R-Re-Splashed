if (oControl.mod_fusion == 1)
{
    switch global.currentsuit
    {
        case 0:
            draw_sprite_ext(sSpaceJumpTrail_fusion, 0, x, y, image_xscale, 1, (image_angle + (image_xscale == -1 * 180)), c_white, image_alpha)
            break
        case 1:
            draw_sprite_ext(sSpaceJumpTrailVaria_fusion, 0, x, y, image_xscale, 1, (image_angle + (image_xscale == -1 * 180)), c_white, image_alpha)
            break
        case 2:
            draw_sprite_ext(sSpaceJumpTrailGravity_fusion, 0, x, y, image_xscale, 1, (image_angle + (image_xscale == -1 * 180)), c_white, image_alpha)
            break
    }

}
else
{
    switch global.currentsuit
    {
        case 0:
            draw_sprite_ext(sSpaceJumpTrail, 0, x, y, image_xscale, 1, (image_angle + (image_xscale == -1 * 180)), c_white, image_alpha)
            break
        case 1:
            draw_sprite_ext(sSpaceJumpTrailVaria, 0, x, y, image_xscale, 1, (image_angle + (image_xscale == -1 * 180)), c_white, image_alpha)
            break
        case 2:
            draw_sprite_ext(sSpaceJumpTrailGravity, 0, x, y, image_xscale, 1, (image_angle + (image_xscale == -1 * 180)), c_white, image_alpha)
            break
    }

}
