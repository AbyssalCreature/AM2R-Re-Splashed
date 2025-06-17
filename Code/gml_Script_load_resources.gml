var l, lin, filename, harea, hframes, hd1, hd2, hd3, hd4, titlex, titley, xnegative, bgframes, bgspeed, surf, color, col;
for (l = 1; l < 9; l++)
{
    oControl.mod_header[l, 1] = 0
    oControl.mod_header[l, 2] = 3
}
oControl.mod_header[1, 3] = 19
oControl.mod_header[1, 4] = 21
oControl.mod_header[2, 3] = 19
oControl.mod_header[2, 4] = 21
oControl.mod_header[3, 3] = 24
oControl.mod_header[3, 4] = 26
oControl.mod_header[4, 3] = 15
oControl.mod_header[4, 4] = 17
oControl.mod_header[5, 3] = 26
oControl.mod_header[5, 4] = 28
oControl.mod_header[7, 2] = 7
oControl.mod_header[7, 3] = 9
oControl.mod_header[7, 4] = 17
oControl.mod_header[8, 3] = 15
oControl.mod_header[8, 4] = 17
lin = ""
if (os_type == os_linux)
    lin = "/assets"
if (os_type == os_android)
    exit
if directory_exists(working_directory + "/lang/headers")
{
    for (filename = file_find_first((working_directory + "/lang/headers/" + "*.png"), 0); filename != ""; filename = file_find_next())
    {
        if (string_pos(string_lower(string_replace(get_text("Header", "Language"), " (16:9)", "")), string_lower(filename)) != 0)
        {
            harea = string_pos("_a", string_lower(filename))
            hframes = string_pos("_f", string_lower(filename))
            hd1 = string_pos("_b", string_lower(filename))
            hd2 = string_pos("_c", string_lower(filename))
            hd3 = string_pos("_d", string_lower(filename))
            hd4 = string_pos("_e", string_lower(filename))
            if (harea != 0)
            {
                harea = real(string_digits(string_char_at(filename, (harea + 2))))
                if (hframes != 0)
                {
                    hframes = real(string_digits((string_char_at(filename, (hframes + 2))) + (string_char_at(filename, (hframes + 3)))))
                    oControl.mod_header[harea, 0] = hframes
                }
                if (hd1 != 0)
                    oControl.mod_header[harea, 1] = real(string_digits((string_char_at(filename, (hd1 + 2))) + (string_char_at(filename, (hd1 + 3)))))
                if (hd2 != 0)
                    oControl.mod_header[harea, 2] = real(string_digits((string_char_at(filename, (hd2 + 2))) + (string_char_at(filename, (hd2 + 3)))))
                if (hd3 != 0)
                    oControl.mod_header[harea, 3] = real(string_digits((string_char_at(filename, (hd3 + 2))) + (string_char_at(filename, (hd3 + 3)))))
                if (hd4 != 0)
                    oControl.mod_header[harea, 4] = real(string_digits((string_char_at(filename, (hd4 + 2))) + (string_char_at(filename, (hd4 + 3)))))
                spr = sprite_add((working_directory + "/lang/headers/" + filename), hframes, false, false, 0, 0)
                sprite_assign(asset_get_index("sIntro_A" + string(harea)), spr)
                sprite_delete(spr)
            }
        }
    }
    file_find_close()
}
if directory_exists(program_directory + lin + "/lang/titles")
{
    for (filename = file_find_first((program_directory + lin + "/lang/titles/" + "*.png"), 0); filename != ""; filename = file_find_next())
    {
        if (string_pos(string_lower(string_replace(get_text("Header", "Language"), " (16:9)", "")), string_lower(filename)) != 0)
        {
            titlex = string_pos("x", string_lower(filename))
            titley = string_pos("y", string_lower(filename))
            xnegative = string_pos("-x", string_lower(filename))
            if (titlex != 0)
                oControl.mod_xcoordinate = real(string_digits((string_char_at(filename, (titlex + 1))) + (string_char_at(filename, (titlex + 2))) + (string_char_at(filename, (titlex + 3)))))
            if (titley != 0)
                oControl.mod_ycoordinate = real(string_digits((string_char_at(filename, (titley + 1))) + (string_char_at(filename, (titley + 2))) + (string_char_at(filename, (titley + 3)))))
            if (xnegative != 0)
                oControl.mod_xcoordinate = (-oControl.mod_xcoordinate)
            bck = background_add((program_directory + lin + "/lang/titles/" + filename), 0, 0)
            background_assign(bgAM2RTitle, bck)
            background_delete(bck)
        }
    }
    file_find_close()
}
if directory_exists(program_directory)
{
    for (filename = file_find_first((program_directory + "*.png"), 0); filename != ""; filename = file_find_next())
    {
        if (string_pos("titlebackground", filename) != 0)
        {
            oControl.mod_backgroundframes = 1
            oControl.mod_backgroundspeed = 60
            bgframes = string_pos("f", string_lower(filename))
            bgspeed = string_pos("s", string_lower(filename))
            if (bgframes != 0)
                oControl.mod_backgroundframes = real(string_digits((string_char_at(filename, (bgframes + 1))) + (string_char_at(filename, (bgframes + 2)))))
            if (bgspeed != 0)
                oControl.mod_backgroundspeed = real(string_digits((string_char_at(filename, (bgspeed + 1))) + (string_char_at(filename, (bgspeed + 2)))))
            spr = sprite_add((program_directory + filename), oControl.mod_backgroundframes, false, false, 0, 0)
            sprite_assign(sTitleAnimated, spr)
            sprite_delete(spr)
        }
    }
    file_find_close()
}
oControl.PowerPalette = -1
oControl.VariaPalette = -1
oControl.GravityPalette = -1
oControl.PowerPalette2 = -1
oControl.VariaPalette2 = -1
oControl.GravityPalette2 = -1
oControl.PowerPalette2f = -1
oControl.VariaPalette2f = -1
oControl.GravityPalette2f = -1
oControl.OmegaPallete2f = -1
if file_exists("mods/palettes/suits/power.png")
    oControl.PowerPalette = sprite_add("mods/palettes/suits/power.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/varia.png")
    oControl.VariaPalette = sprite_add("mods/palettes/suits/varia.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/gravity.png")
    oControl.GravityPalette = sprite_add("mods/palettes/suits/gravity.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/fusion_power.png")
    sprite_replace(sPalFusion0, "mods/palettes/suits/fusion_power.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/fusion_varia.png")
    sprite_replace(sPalFusion1, "mods/palettes/suits/fusion_varia.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/fusion_gravity.png")
    sprite_replace(sPalFusion2, "mods/palettes/suits/fusion_gravity.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/fusion_omega.png")
    sprite_replace(sPalFusion3, "mods/palettes/suits/fusion_omega.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/SpaceJumpTrails/power.png")
    sprite_replace(sSpaceJumpTrail, "mods/palettes/suits/SpaceJumpTrails/power.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrail), sprite_get_yoffset(sSpaceJumpTrail))
if file_exists("mods/palettes/suits/SpaceJumpTrails/varia.png")
    sprite_replace(sSpaceJumpTrailVaria, "mods/palettes/suits/SpaceJumpTrails/varia.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailVaria), sprite_get_yoffset(sSpaceJumpTrailVaria))
if file_exists("mods/palettes/suits/SpaceJumpTrails/gravity.png")
    sprite_replace(sSpaceJumpTrailGravity, "mods/palettes/suits/SpaceJumpTrails/gravity.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailGravity), sprite_get_yoffset(sSpaceJumpTrailGravity))
if file_exists("mods/palettes/suits/SpaceJumpTrails/fusion_power.png")
    sprite_replace(sSpaceJumpTrail_fusion, "mods/palettes/suits/SpaceJumpTrails/fusion_power.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrail_fusion), sprite_get_yoffset(sSpaceJumpTrail_fusion))
if file_exists("mods/palettes/suits/SpaceJumpTrails/fusion_varia.png")
    sprite_replace(sSpaceJumpTrailVaria_fusion, "mods/palettes/suits/SpaceJumpTrails/fusion_varia.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailVaria_fusion), sprite_get_yoffset(sSpaceJumpTrailVaria_fusion))
if file_exists("mods/palettes/suits/SpaceJumpTrails/fusion_gravity.png")
    sprite_replace(sSpaceJumpTrailGravity_fusion, "mods/palettes/suits/SpaceJumpTrails/fusion_gravity.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailGravity_fusion), sprite_get_yoffset(sSpaceJumpTrailGravity_fusion))
if file_exists("mods/palettes/suits/SpaceJumpTrails/fusion_omega.png")
    sprite_replace(sSpaceJumpTrailOmega_fusion, "mods/palettes/suits/SpaceJumpTrails/fusion_omega.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailOmega_fusion), sprite_get_yoffset(sSpaceJumpTrailOmega_fusion))
if file_exists("mods/palettes/suits/SpiderBallGlow/power.png")
    sprite_replace(sSpiderballFX, "mods/palettes/suits/SpiderBallGlow/power.png", 1, false, false, sprite_get_xoffset(sSpiderballFX), sprite_get_yoffset(sSpiderballFX))
if file_exists("mods/palettes/suits/SpiderBallGlow/varia.png")
    sprite_replace(sSpiderballFXVaria, "mods/palettes/suits/SpiderBallGlow/varia.png", 1, false, false, sprite_get_xoffset(sSpiderballFXVaria), sprite_get_yoffset(sSpiderballFXVaria))
if file_exists("mods/palettes/suits/SpiderBallGlow/gravity.png")
    sprite_replace(sSpiderballFXGravity, "mods/palettes/suits/SpiderBallGlow/gravity.png", 1, false, false, sprite_get_xoffset(sSpiderballFXGravity), sprite_get_yoffset(sSpiderballFXGravity))
if file_exists("mods/palettes/suits/SpiderBallGlow/fusion_power.png")
    sprite_replace(sSpiderballFX_fusion, "mods/palettes/suits/SpiderBallGlow/fusion_power.png", 1, false, false, sprite_get_xoffset(sSpiderballFX_fusion), sprite_get_yoffset(sSpiderballFX_fusion))
if file_exists("mods/palettes/suits/SpiderBallGlow/fusion_varia.png")
    sprite_replace(sSpiderballFXVaria_fusion, "mods/palettes/suits/SpiderBallGlow/fusion_varia.png", 1, false, false, sprite_get_xoffset(sSpiderballFXVaria_fusion), sprite_get_yoffset(sSpiderballFXVaria_fusion))
if file_exists("mods/palettes/suits/SpiderBallGlow/fusion_gravity.png")
    sprite_replace(sSpiderballFXGravity_fusion, "mods/palettes/suits/SpiderBallGlow/fusion_gravity.png", 1, false, false, sprite_get_xoffset(sSpiderballFXGravity_fusion), sprite_get_yoffset(sSpiderballFXGravity_fusion))
if file_exists("mods/palettes/suits/SpiderBallGlow/fusion_omega.png")
    sprite_replace(sSpiderballFXOmega_fusion, "mods/palettes/suits/SpiderBallGlow/fusion_omega.png", 1, false, false, sprite_get_xoffset(sSpiderballFXOmega_fusion), sprite_get_yoffset(sSpiderballFXOmega_fusion))
surf = -1
color = -1
if (!surface_exists(surf))
    surf = surface_create(4, 4)
surface_set_target(surf)
if file_exists("mods/palettes/suits/MorphTrailColors/power.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/power.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_P_R = col & 255
    Trail_P_G = (col >> 8) & 255
    Trail_P_B = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/varia.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/varia.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_V_R = col & 255
    Trail_V_G = (col >> 8) & 255
    Trail_V_B = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/gravity.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/gravity.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_G_R = col & 255
    Trail_G_G = (col >> 8) & 255
    Trail_G_B = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/fusion_power.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/fusion_power.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_P_R_F = col & 255
    Trail_P_G_F = (col >> 8) & 255
    Trail_P_B_F = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/fusion_varia.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/fusion_varia.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_V_R_F = col & 255
    Trail_V_G_F = (col >> 8) & 255
    Trail_V_B_F = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/fusion_gravity.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/fusion_gravity.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_G_R_F = col & 255
    Trail_G_G_F = (col >> 8) & 255
    Trail_G_B_F = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/fusion_omega.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/fusion_omega.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_O_R_F = col & 255
    Trail_O_G_F = (col >> 8) & 255
    Trail_O_B_F = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/power2d.png")
    oControl.PowerPalette2 = sprite_add("mods/palettes/suits/power2d.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/varia2d.png")
    oControl.VariaPalette2 = sprite_add("mods/palettes/suits/varia2d.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/gravity2d.png")
    oControl.GravityPalette2 = sprite_add("mods/palettes/suits/gravity2d.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/fusion_power2d.png")
    oControl.PowerPalette2f = sprite_add("mods/palettes/suits/fusion_power2d.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/fusion_varia2d.png")
    oControl.VariaPalette2f = sprite_add("mods/palettes/suits/fusion_varia2d.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/fusion_gravity2d.png")
    oControl.GravityPalette2f = sprite_add("mods/palettes/suits/fusion_gravity2d.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/fusion_omega2d.png")
    oControl.OmegaPallete2f = sprite_add("mods/palettes/suits/fusion_omega2d.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/suits/SpaceJumpTrails/power2d.png")
    sprite_replace(sSpaceJumpTrail2D, "mods/palettes/suits/SpaceJumpTrails/power2d.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrail), sprite_get_yoffset(sSpaceJumpTrail))
if file_exists("mods/palettes/suits/SpaceJumpTrails/varia2d.png")
    sprite_replace(sSpaceJumpTrailVaria2D, "mods/palettes/suits/SpaceJumpTrails/varia2d.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailVaria), sprite_get_yoffset(sSpaceJumpTrailVaria))
if file_exists("mods/palettes/suits/SpaceJumpTrails/gravity2d.png")
    sprite_replace(sSpaceJumpTrailGravity2D, "mods/palettes/suits/SpaceJumpTrails/gravity2d.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailGravity), sprite_get_yoffset(sSpaceJumpTrailGravity))
if file_exists("mods/palettes/suits/SpaceJumpTrails/fusion_power2d.png")
    sprite_replace(sSpaceJumpTrail_fusion2D, "mods/palettes/suits/SpaceJumpTrails/fusion_power2d.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrail_fusion), sprite_get_yoffset(sSpaceJumpTrail_fusion))
if file_exists("mods/palettes/suits/SpaceJumpTrails/fusion_varia2d.png")
    sprite_replace(sSpaceJumpTrailVaria_fusion2D, "mods/palettes/suits/SpaceJumpTrails/fusion_varia2d.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailVaria_fusion), sprite_get_yoffset(sSpaceJumpTrailVaria_fusion))
if file_exists("mods/palettes/suits/SpaceJumpTrails/fusion_gravity2d.png")
    sprite_replace(sSpaceJumpTrailGravity_fusion2D, "mods/palettes/suits/SpaceJumpTrails/fusion_gravity2d.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailGravity_fusion), sprite_get_yoffset(sSpaceJumpTrailGravity_fusion))
if file_exists("mods/palettes/suits/SpaceJumpTrails/fusion_omega2d.png")
    sprite_replace(sSpaceJumpTrailOmega_fusion2D, "mods/palettes/suits/SpaceJumpTrails/fusion_omega2d.png", 1, false, false, sprite_get_xoffset(sSpaceJumpTrailOmega_fusion), sprite_get_yoffset(sSpaceJumpTrailOmega_fusion))
if file_exists("mods/palettes/suits/SpiderBallGlow/power2d.png")
    sprite_replace(sSpiderballFX2D, "mods/palettes/suits/SpiderBallGlow/power2d.png", 1, false, false, sprite_get_xoffset(sSpiderballFX), sprite_get_yoffset(sSpiderballFX))
if file_exists("mods/palettes/suits/SpiderBallGlow/varia2d.png")
    sprite_replace(sSpiderballFXVaria2D, "mods/palettes/suits/SpiderBallGlow/varia2d.png", 1, false, false, sprite_get_xoffset(sSpiderballFXVaria), sprite_get_yoffset(sSpiderballFXVaria))
if file_exists("mods/palettes/suits/SpiderBallGlow/gravity2d.png")
    sprite_replace(sSpiderballFXGravity2D, "mods/palettes/suits/SpiderBallGlow/gravity2d.png", 1, false, false, sprite_get_xoffset(sSpiderballFXGravity), sprite_get_yoffset(sSpiderballFXGravity))
if file_exists("mods/palettes/suits/SpiderBallGlow/fusion_power2d.png")
    sprite_replace(sSpiderballFX_fusion2D, "mods/palettes/suits/SpiderBallGlow/fusion_power2d.png", 1, false, false, sprite_get_xoffset(sSpiderballFX_fusion), sprite_get_yoffset(sSpiderballFX_fusion))
if file_exists("mods/palettes/suits/SpiderBallGlow/fusion_varia2d.png")
    sprite_replace(sSpiderballFXVaria_fusion2D, "mods/palettes/suits/SpiderBallGlow/fusion_varia2d.png", 1, false, false, sprite_get_xoffset(sSpiderballFXVaria_fusion), sprite_get_yoffset(sSpiderballFXVaria_fusion))
if file_exists("mods/palettes/suits/SpiderBallGlow/fusion_gravity2d.png")
    sprite_replace(sSpiderballFXGravity_fusion2D, "mods/palettes/suits/SpiderBallGlow/fusion_gravity2d.png", 1, false, false, sprite_get_xoffset(sSpiderballFXGravity_fusion), sprite_get_yoffset(sSpiderballFXGravity_fusion))
if file_exists("mods/palettes/suits/SpiderBallGlow/fusion_omega2d.png")
    sprite_replace(sSpiderballFXOmega_fusion2D, "mods/palettes/suits/SpiderBallGlow/fusion_omega2d.png", 1, false, false, sprite_get_xoffset(sSpiderballFXOmega_fusion), sprite_get_yoffset(sSpiderballFXOmega_fusion))
surf = -1
color = -1
if (!surface_exists(surf))
    surf = surface_create(4, 4)
surface_set_target(surf)
if file_exists("mods/palettes/suits/MorphTrailColors/power2d.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/power2d.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_P_R = col & 255
    Trail_P_G = (col >> 8) & 255
    Trail_P_B = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/varia2d.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/varia2d.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_V_R = col & 255
    Trail_V_G = (col >> 8) & 255
    Trail_V_B = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/gravity2d.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/gravity2d.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_G_R = col & 255
    Trail_G_G = (col >> 8) & 255
    Trail_G_B = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/fusion_power2d.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/fusion_power2d.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_P_R_F = col & 255
    Trail_P_G_F = (col >> 8) & 255
    Trail_P_B_F = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/fusion_varia2d.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/fusion_varia2d.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_V_R_F = col & 255
    Trail_V_G_F = (col >> 8) & 255
    Trail_V_B_F = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/fusion_gravity2d.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/fusion_gravity2d.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_G_R_F = col & 255
    Trail_G_G_F = (col >> 8) & 255
    Trail_G_B_F = (col >> 16) & 255
}
if file_exists("mods/palettes/suits/MorphTrailColors/fusion_omega2d.png")
{
    color = sprite_add("mods/palettes/suits/MorphTrailColors/fusion_omega2d.png", 1, false, false, 0, 0)
    draw_clear_alpha(c_black, 0)
    draw_sprite(color, 0, 0, 0)
    col = surface_getpixel_ext(surf, 0, 0)
    Trail_O_R_F = col & 255
    Trail_O_G_F = (col >> 8) & 255
    Trail_O_B_F = (col >> 16) & 255
}
draw_clear_alpha(c_black, 0)
draw_sprite(sMorphTrailPower_msr, 0, 0, 0)
col = surface_getpixel_ext(surf, 0, 0)
Trail_P_R_F_SR = col & 255
Trail_P_G_F_SR = (col >> 8) & 255
Trail_P_B_F_SR = (col >> 16) & 255
draw_clear_alpha(c_black, 0)
draw_sprite(sMorphTrailVaria_msr, 0, 0, 0)
col = surface_getpixel_ext(surf, 0, 0)
Trail_V_R_F_SR = col & 255
Trail_V_G_F_SR = (col >> 8) & 255
Trail_V_B_F_SR = (col >> 16) & 255
draw_clear_alpha(c_black, 0)
draw_sprite(sMorphTrailGravity_msr, 0, 0, 0)
col = surface_getpixel_ext(surf, 0, 0)
Trail_G_R_F_SR = col & 255
Trail_G_G_F_SR = (col >> 8) & 255
Trail_G_B_F_SR = (col >> 16) & 255
surface_reset_target()
surface_reset_target()
surface_free(surf)
sprite_delete(color)
ini_open("mods/palettes/monsters/config.ini")
MonsterPalettesFusionOnly = ini_read_real("PaletteMode", "FusionOnly", 1)
ini_close()
oControl.AlphaPalette = -1
oControl.GammaPalette = -1
oControl.ZetaPalette = -1
oControl.OmegaPalette = -1
oControl.QueenPalette = -1
oControl.ZetaBlur = -1
oControl.QueenDead = -1
oControl.QueenBloodDrop = -1
oControl.QueenBloodParticle = -1
if file_exists("mods/palettes/monsters/alpha.png")
    oControl.AlphaPalette = sprite_add("mods/palettes/monsters/alpha.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/monsters/gamma.png")
    oControl.GammaPalette = sprite_add("mods/palettes/monsters/gamma.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/monsters/zeta.png")
    oControl.ZetaPalette = sprite_add("mods/palettes/monsters/zeta.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/monsters/omega.png")
    oControl.OmegaPalette = sprite_add("mods/palettes/monsters/omega.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/monsters/queen.png")
    oControl.QueenPalette = sprite_add("mods/palettes/monsters/queen.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/monsters/zeta_blur.png")
    oControl.ZetaBlur = sprite_add("mods/palettes/monsters/zeta_blur.png", 1, false, false, sprite_get_xoffset(sMZetaBlur), sprite_get_yoffset(sMZetaBlur))
if file_exists("mods/palettes/monsters/queen_dead.png")
    oControl.QueenDead = background_add("mods/palettes/monsters/queen_dead.png", 0, 0)
if file_exists("mods/palettes/monsters/queen_blood_drop.png")
    oControl.QueenBloodDrop = sprite_add("mods/palettes/monsters/queen_blood_drop.png", sprite_get_number(sQueenBloodDrop), false, false, sprite_get_xoffset(sQueenBloodDrop), sprite_get_yoffset(sQueenBloodDrop))
if file_exists("mods/palettes/monsters/queen_blood_particle.png")
    oControl.QueenBloodParticle = sprite_add("mods/palettes/monsters/queen_blood_particle.png", sprite_get_number(sQueenBloodParticle), false, false, sprite_get_xoffset(sQueenBloodParticle), sprite_get_yoffset(sQueenBloodParticle))
if file_exists("mods/palettes/multitroid/multitroid.png")
    oControl.MultitroidPaletteCustom = sprite_add("mods/palettes/multitroid/multitroid.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/multitroid/multitroid_fusion.png")
    oControl.MultitroidPaletteFusionCustom = sprite_add("mods/palettes/multitroid/multitroid_fusion.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/multitroid/spiderball.png")
    oControl.SpiderballPaletteCustom = sprite_add("mods/palettes/multitroid/spiderball.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/multitroid/baby_metroid.png")
    oControl.MultitroidBabyPaletteCustom = sprite_add("mods/palettes/multitroid/baby_metroid.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/multitroid/map_icons/sSpectatorIcon.png")
    oControl.MultitroidSpectatorIcon = sprite_add("mods/palettes/multitroid/map_icons/sSpectatorIcon.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/multitroid/map_icons/sFusionIcon.png")
    oControl.MultitroidFusionIcon = sprite_add("mods/palettes/multitroid/map_icons/sFusionIcon.png", 1, false, false, 0, 0)
if file_exists("mods/palettes/multitroid/map_icons/sSAXIcon.png")
    oControl.MultitroidSAXIcon = sprite_add("mods/palettes/multitroid/map_icons/sSAXIcon.png", 1, false, false, 0, 0)
icon_sprite = 0
icon_merge = sHPickupBig
icon_merge2 = sMPickup
icon_merge3 = sSMPickup
icon_merge4 = sPBPickup
icon_merge5 = sBeam
icon_merge6 = sBeam2
icon_merge7 = sIBeam
icon_merge8 = sIBeam2
icon_duplicate = sPBeam
icon_duplicate2 = sPBeam2
icon_duplicate3 = sWBeam
icon_duplicate4 = sWBeam2
icon_duplicate5 = sSBeam
icon_duplicate6 = sSBeam2
icon_duplicate7 = sFlare1
icon_duplicate8 = sReflectSpark
icon_merge9 = sProjectileMask
icon_merge10 = sBeam3
icon_merge11 = sIBeamFX
icon_merge12 = sIBeamFXA
icon_merge13 = sIBeamA
icon_merge14 = sIPBeam
icon_merge15 = sISBeam
icon_merge16 = sISPBeam
icon_duplicate9 = sISPBeam2
icon_duplicate10 = sISWPBeam
icon_duplicate11 = sISWPBeam2
icon_duplicate12 = sIWBeam
icon_duplicate13 = sIWBeam2
icon_duplicate14 = sSPBeam
icon_duplicate15 = sSPBeam2
icon_duplicate16 = sBeamExpl
i = 0
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_0.png")
{
    icon_merge = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_0.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate = sprite_duplicate(icon_merge)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_1.png")
{
    icon_merge2 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_1.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate2 = sprite_duplicate(icon_merge2)
sprite_merge(icon_duplicate, icon_duplicate2)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_2.png")
{
    icon_merge3 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_2.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate3 = sprite_duplicate(icon_merge3)
sprite_merge(icon_duplicate, icon_duplicate3)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_3.png")
{
    icon_merge4 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_3.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate4 = sprite_duplicate(icon_merge4)
sprite_merge(icon_duplicate, icon_duplicate4)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_4.png")
{
    icon_merge5 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_4.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate5 = sprite_duplicate(icon_merge5)
sprite_merge(icon_duplicate, icon_duplicate5)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_5.png")
{
    icon_merge6 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_5.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate6 = sprite_duplicate(icon_merge6)
sprite_merge(icon_duplicate, icon_duplicate6)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_6.png")
{
    icon_merge7 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_6.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate7 = sprite_duplicate(icon_merge7)
sprite_merge(icon_duplicate, icon_duplicate7)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_7.png")
{
    icon_merge8 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_7.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate8 = sprite_duplicate(icon_merge8)
sprite_merge(icon_duplicate, icon_duplicate8)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_8.png")
{
    icon_merge9 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_8.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate9 = sprite_duplicate(icon_merge9)
sprite_merge(icon_duplicate, icon_duplicate9)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_9.png")
{
    icon_merge10 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_9.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate10 = sprite_duplicate(icon_merge10)
sprite_merge(icon_duplicate, icon_duplicate10)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_10.png")
{
    icon_merge11 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_10.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate11 = sprite_duplicate(icon_merge11)
sprite_merge(icon_duplicate, icon_duplicate11)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_11.png")
{
    icon_merge12 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_11.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate12 = sprite_duplicate(icon_merge12)
sprite_merge(icon_duplicate, icon_duplicate12)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_12.png")
{
    icon_merge13 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_12.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate13 = sprite_duplicate(icon_merge13)
sprite_merge(icon_duplicate, icon_duplicate13)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_13.png")
{
    icon_merge14 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_13.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate14 = sprite_duplicate(icon_merge14)
sprite_merge(icon_duplicate, icon_duplicate14)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_14.png")
{
    icon_merge15 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_14.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate15 = sprite_duplicate(icon_merge15)
sprite_merge(icon_duplicate, icon_duplicate15)
if file_exists("mods/palettes/multitroid/player_icons/sMultitroidPlayer_15.png")
{
    icon_merge16 = sprite_add("mods/palettes/multitroid/player_icons/sMultitroidPlayer_15.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate16 = sprite_duplicate(icon_merge16)
sprite_merge(icon_duplicate, icon_duplicate16)
if (i == 16)
{
    oControl.MultitroidIconCustom = icon_duplicate
    show_debug_message("MultitroidIcons imported")
}
icon_sprite = 1
icon_merge = sMPickup
icon_merge2 = sSMPickup
icon_merge3 = sPBPickup
icon_merge4 = sBeam
icon_merge5 = sBeam2
icon_merge6 = sIBeam
icon_merge7 = sIBeam2
icon_merge8 = sIBeam2
icon_duplicate = sPBeam
icon_duplicate2 = sPBeam2
icon_duplicate3 = sWBeam
icon_duplicate4 = sWBeam2
icon_duplicate5 = sSBeam
icon_duplicate6 = sSBeam2
icon_duplicate7 = sFlare1
icon_duplicate8 = sReflectSpark
icon_merge9 = sProjectileMask
icon_merge10 = sBeam3
icon_merge11 = sIBeamFX
icon_merge12 = sIBeamFXA
icon_merge13 = sIBeamA
icon_merge14 = sIPBeam
icon_merge15 = sISBeam
icon_merge16 = sISPBeam
icon_duplicate9 = sISPBeam2
icon_duplicate10 = sISWPBeam
icon_duplicate11 = sISWPBeam2
icon_duplicate12 = sIWBeam
icon_duplicate13 = sIWBeam2
icon_duplicate14 = sSPBeam
icon_duplicate15 = sSPBeam2
icon_duplicate16 = sBeamExpl
i = 0
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_0.png")
{
    icon_merge = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_0.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate = sprite_duplicate(icon_merge)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_1.png")
{
    icon_merge2 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_1.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate2 = sprite_duplicate(icon_merge2)
sprite_merge(icon_duplicate, icon_duplicate2)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_2.png")
{
    icon_merge3 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_2.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate3 = sprite_duplicate(icon_merge3)
sprite_merge(icon_duplicate, icon_duplicate3)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_3.png")
{
    icon_merge4 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_3.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate4 = sprite_duplicate(icon_merge4)
sprite_merge(icon_duplicate, icon_duplicate4)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_4.png")
{
    icon_merge5 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_4.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate5 = sprite_duplicate(icon_merge5)
sprite_merge(icon_duplicate, icon_duplicate5)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_5.png")
{
    icon_merge6 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_5.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate6 = sprite_duplicate(icon_merge6)
sprite_merge(icon_duplicate, icon_duplicate6)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_6.png")
{
    icon_merge7 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_6.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate7 = sprite_duplicate(icon_merge7)
sprite_merge(icon_duplicate, icon_duplicate7)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_7.png")
{
    icon_merge8 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_7.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate8 = sprite_duplicate(icon_merge8)
sprite_merge(icon_duplicate, icon_duplicate8)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_8.png")
{
    icon_merge9 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_8.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate9 = sprite_duplicate(icon_merge9)
sprite_merge(icon_duplicate, icon_duplicate9)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_9.png")
{
    icon_merge10 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_9.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate10 = sprite_duplicate(icon_merge10)
sprite_merge(icon_duplicate, icon_duplicate10)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_10.png")
{
    icon_merge11 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_10.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate11 = sprite_duplicate(icon_merge11)
sprite_merge(icon_duplicate, icon_duplicate11)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_11.png")
{
    icon_merge12 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_11.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate12 = sprite_duplicate(icon_merge12)
sprite_merge(icon_duplicate, icon_duplicate12)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_12.png")
{
    icon_merge13 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_12.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate13 = sprite_duplicate(icon_merge13)
sprite_merge(icon_duplicate, icon_duplicate13)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_13.png")
{
    icon_merge14 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_13.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate14 = sprite_duplicate(icon_merge14)
sprite_merge(icon_duplicate, icon_duplicate14)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_14.png")
{
    icon_merge15 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_14.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate15 = sprite_duplicate(icon_merge15)
sprite_merge(icon_duplicate, icon_duplicate15)
if file_exists("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_15.png")
{
    icon_merge16 = sprite_add("mods/palettes/multitroid/dark_player_icons/sDarkMultitroidPlayer_15.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate16 = sprite_duplicate(icon_merge16)
sprite_merge(icon_duplicate, icon_duplicate16)
if (i == 16)
{
    oControl.MultitroidIconDarkCustom = icon_duplicate
    show_debug_message("MultitroidIconDark imported")
}
icon_sprite = 1
icon_merge = sMPickup
icon_merge2 = sSMPickup
icon_merge3 = sPBPickup
icon_merge4 = sBeam
icon_merge5 = sBeam2
icon_merge6 = sIBeam
icon_merge7 = sIBeam2
icon_merge8 = sIBeam2
icon_duplicate = sPBeam
icon_duplicate2 = sPBeam2
icon_duplicate3 = sWBeam
icon_duplicate4 = sWBeam2
icon_duplicate5 = sSBeam
icon_duplicate6 = sSBeam2
icon_duplicate7 = sFlare1
icon_duplicate8 = sReflectSpark
icon_merge9 = sProjectileMask
icon_merge10 = sBeam3
icon_merge11 = sIBeamFX
icon_merge12 = sIBeamFXA
icon_merge13 = sIBeamA
icon_merge14 = sIPBeam
icon_merge15 = sISBeam
icon_merge16 = sISPBeam
icon_duplicate9 = sISPBeam2
icon_duplicate10 = sISWPBeam
icon_duplicate11 = sISWPBeam2
icon_duplicate12 = sIWBeam
icon_duplicate13 = sIWBeam2
icon_duplicate14 = sSPBeam
icon_duplicate15 = sSPBeam2
icon_duplicate16 = sBeamExpl
i = 0
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_0.png")
{
    icon_merge = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_0.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate = sprite_duplicate(icon_merge)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_1.png")
{
    icon_merge2 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_1.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate2 = sprite_duplicate(icon_merge2)
sprite_merge(icon_duplicate, icon_duplicate2)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_2.png")
{
    icon_merge3 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_2.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate3 = sprite_duplicate(icon_merge3)
sprite_merge(icon_duplicate, icon_duplicate3)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_3.png")
{
    icon_merge4 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_3.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate4 = sprite_duplicate(icon_merge4)
sprite_merge(icon_duplicate, icon_duplicate4)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_4.png")
{
    icon_merge5 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_4.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate5 = sprite_duplicate(icon_merge5)
sprite_merge(icon_duplicate, icon_duplicate5)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_5.png")
{
    icon_merge6 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_5.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate6 = sprite_duplicate(icon_merge6)
sprite_merge(icon_duplicate, icon_duplicate6)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_6.png")
{
    icon_merge7 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_6.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate7 = sprite_duplicate(icon_merge7)
sprite_merge(icon_duplicate, icon_duplicate7)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_7.png")
{
    icon_merge8 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_7.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate8 = sprite_duplicate(icon_merge8)
sprite_merge(icon_duplicate, icon_duplicate8)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_8.png")
{
    icon_merge9 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_8.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate9 = sprite_duplicate(icon_merge9)
sprite_merge(icon_duplicate, icon_duplicate9)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_9.png")
{
    icon_merge10 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_9.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate10 = sprite_duplicate(icon_merge10)
sprite_merge(icon_duplicate, icon_duplicate10)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_10.png")
{
    icon_merge11 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_10.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate11 = sprite_duplicate(icon_merge11)
sprite_merge(icon_duplicate, icon_duplicate11)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_11.png")
{
    icon_merge12 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_11.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate12 = sprite_duplicate(icon_merge12)
sprite_merge(icon_duplicate, icon_duplicate12)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_12.png")
{
    icon_merge13 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_12.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate13 = sprite_duplicate(icon_merge13)
sprite_merge(icon_duplicate, icon_duplicate13)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_13.png")
{
    icon_merge14 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_13.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate14 = sprite_duplicate(icon_merge14)
sprite_merge(icon_duplicate, icon_duplicate14)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_14.png")
{
    icon_merge15 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_14.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate15 = sprite_duplicate(icon_merge15)
sprite_merge(icon_duplicate, icon_duplicate15)
if file_exists("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_15.png")
{
    icon_merge16 = sprite_add("mods/palettes/multitroid/map_icons/sMultitroidMapIcon_15.png", 1, false, false, 0, 0)
    i++
}
icon_duplicate16 = sprite_duplicate(icon_merge16)
sprite_merge(icon_duplicate, icon_duplicate16)
if (i == 16)
{
    oControl.MultitroidMapIconCustom = icon_duplicate
    show_debug_message("MultitroidMapIcons imported")
}
oControl.GuardianPalette = -1
oControl.ArachnusPalette = -1
oControl.TorizoPalette = -1
oControl.TesterPalette = -1
oControl.TankPalette = -1
oControl.ErisPalette = -1
oControl.GenesisPalette = -1
ini_open("mods/palettes/bosses/config.ini")
Alt_Setting = ini_read_real("FusionPalettes", "Bosses", 0)
ini_close()
if file_exists("mods/palettes/bosses/guardian.png")
    oControl.GuardianPalette = sprite_add("mods/palettes/bosses/guardian.png", 1, false, false, 0, 0)
ini_open("mods/palettes/bosses/config.ini")
Alt_Setting = ini_read_real("FusionPalettes", "Bosses", 0)
ini_close()
if file_exists("mods/palettes/bosses/arachnus.png")
    oControl.ArachnusPalette = sprite_add("mods/palettes/bosses/arachnus.png", 1, false, false, 0, 0)
ini_open("mods/palettes/bosses/config.ini")
Alt_Setting = ini_read_real("FusionPalettes", "Bosses", 0)
ini_close()
if file_exists("mods/palettes/bosses/torizo.png")
    oControl.TorizoPalette = sprite_add("mods/palettes/bosses/torizo.png", 1, false, false, 0, 0)
ini_open("mods/palettes/bosses/config.ini")
Alt_Setting = ini_read_real("FusionPalettes", "Bosses", 0)
ini_close()
if file_exists("mods/palettes/bosses/tester.png")
    oControl.TesterPalette = sprite_add("mods/palettes/bosses/tester.png", 1, false, false, 0, 0)
ini_open("mods/palettes/bosses/config.ini")
Alt_Setting = ini_read_real("FusionPalettes", "Bosses", 0)
ini_close()
if file_exists("mods/palettes/bosses/tank.png")
    oControl.TankPalette = sprite_add("mods/palettes/bosses/tank.png", 1, false, false, 0, 0)
ini_open("mods/palettes/bosses/config.ini")
Alt_Setting = ini_read_real("FusionPalettes", "Bosses", 0)
ini_close()
if file_exists("mods/palettes/bosses/eris.png")
    oControl.ErisPalette = sprite_add("mods/palettes/bosses/eris.png", 1, false, false, 0, 0)
ini_open("mods/palettes/bosses/config.ini")
Alt_Setting = ini_read_real("FusionPalettes", "Bosses", 0)
ini_close()
if file_exists("mods/palettes/bosses/genesis.png")
    oControl.GenesisPalette = sprite_add("mods/palettes/bosses/genesis.png", 1, false, false, 0, 0)
