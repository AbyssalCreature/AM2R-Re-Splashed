armor1 = sShirkArmor1
armor2 = sShirkArmor2
turn = sShirkTurn
armor1turn = sShirkTurnArmor1
armor2turn = sShirkTurnArmor2
if oControl.mod_fusion
{
    sprite_index = sShirk_Fusion
    armor1 = sShirkArmor1_Fusion
    armor2 = sShirkArmor2_Fusion
    turn = sShirkTurn_Fusion
    armor1turn = sShirkTurnArmor1_Fusion
    armor2turn = sShirkTurnArmor2_Fusion
    frozenspr = sShirkFrozen_Fusion
    empspr = sShirkDisabled_Fusion
}
else
{
    sprite_index = sShirk
    frozenspr = sShirkFrozen
    empspr = sShirkDisabled
}
if frozen
{
    myspr = frozenspr
    armor1 = sShirkArmor1Frozen
    armor2 = sShirkArmor2Frozen
    turn = sShirkTurnFrozen
    armor1turn = sShirkTurnArmor1Frozen
    armor2turn = sShirkTurnArmor2Frozen
    if oControl.mod_fusion
    {
        armor1 = sShirkArmor1Frozen_Fusion
        armor2 = sShirkArmor2Frozen_Fusion
        turn = sShirkTurnFrozen_Fusion
        armor1turn = sShirkTurnArmor1Frozen_Fusion
        armor2turn = sShirkTurnArmor2Frozen_Fusion
    }
}
else
{
    myspr = sprite_index
    armor1 = sShirkArmor1
    armor2 = sShirkArmor2
    turn = sShirkTurn
    armor1turn = sShirkTurnArmor1
    armor2turn = sShirkTurnArmor2
    if oControl.mod_fusion
    {
        armor1 = sShirkArmor1_Fusion
        armor2 = sShirkArmor2_Fusion
        turn = sShirkTurn_Fusion
        armor1turn = sShirkTurnArmor1_Fusion
        armor2turn = sShirkTurnArmor2_Fusion
    }
}
image_xscale = facing
if (frozen == 0)
    image_speed = 0.5
else
    image_speed = 0
if (!flashing)
{
    if (turning == 0)
    {
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
        if (myhealth > shell1hp)
            draw_sprite_ext(armor1, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
        if (myhealth > shell2hp)
            draw_sprite_ext(armor2, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
        if (frozen > 0 && frozen < (freezetime * 0.2))
        {
            draw_set_blend_mode(bm_add)
            draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.35))
            if (myhealth > shell1hp)
                draw_sprite_ext(armor1, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.35))
            if (myhealth > shell2hp)
                draw_sprite_ext(armor2, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.35))
            draw_set_blend_mode(bm_normal)
        }
    }
    if (turning > 0)
    {
        draw_sprite_ext(turn, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
        if (myhealth > shell1hp)
            draw_sprite_ext(armor1turn, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
        if (myhealth > shell2hp)
            draw_sprite_ext(armor2turn, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
        if (frozen > 0 && frozen < (freezetime * 0.2))
        {
            draw_set_blend_mode(bm_add)
            draw_sprite_ext(turn, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.35))
            if (myhealth > shell1hp)
                draw_sprite_ext(armor1turn, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.35))
            if (myhealth > shell2hp)
                draw_sprite_ext(armor2turn, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.35))
            draw_set_blend_mode(bm_normal)
        }
    }
}
if flashing
{
    if (turning == 0)
    {
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (myhealth > shell1hp)
            draw_sprite_ext(armor1, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (myhealth > shell2hp)
            draw_sprite_ext(armor2, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        draw_set_blend_mode(bm_add)
        repeat (2)
        {
            draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
            if (myhealth > shell1hp)
                draw_sprite_ext(armor1, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
            if (myhealth > shell2hp)
                draw_sprite_ext(armor2, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
        }
        draw_set_blend_mode(bm_normal)
    }
    if (turning > 0)
    {
        draw_sprite_ext(turn, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (myhealth > shell1hp)
            draw_sprite_ext(armor1turn, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (myhealth > shell2hp)
            draw_sprite_ext(armor2turn, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        draw_set_blend_mode(bm_add)
        repeat (2)
        {
            draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
            if (myhealth > shell1hp)
                draw_sprite_ext(armor1turn, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
            if (myhealth > shell2hp)
                draw_sprite_ext(armor2turn, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
        }
        draw_set_blend_mode(bm_normal)
    }
}
