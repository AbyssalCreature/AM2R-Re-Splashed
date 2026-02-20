if (fadedone >= 1 && room != rm_transition && room != rm_subscreen && room != itemroom && room != rm_death)
{
    global.transitiontype = 0;
    event_user(4);
}

if (!init)
{
    if (os_type == os_linux)
        linux_keys();
    else if (os_type == os_android)
        touch_keys();
    else
        check_keys();
    
    if (room != rm_transition && !global.CONSOLE && global.playerFreeze == 0)
        global_control();
    
    if (kExit && global.opexitkeyenable)
        game_end();
    
    if (kStart && kStartPushedSteps == 0)
        event_user(0);
}

if (global.ingame == 1)
{
    if (malpha > -1)
        malpha -= 0.02;
    
    if (malpha <= 0)
        malpha = 1;
    
    markfr += 0.25;
    
    if (markfr > 4)
        markfr = 0;
    
    global.roomtime += 1;
    hpalarm = 0;
    
    if (global.maxhealth < 100)
    {
        if (global.playerhealth < 30)
            hpalarm = 2;
        
        if (global.playerhealth < 10)
            hpalarm = 3;
    }
    else if (global.maxhealth < 500)
    {
        if (global.playerhealth < 50)
            hpalarm = 1;
        
        if (global.playerhealth < 30)
            hpalarm = 2;
        
        if (global.playerhealth < 10)
            hpalarm = 3;
    }
    else
    {
        if (global.playerhealth < 100)
            hpalarm = 1;
        
        if (global.playerhealth < 50)
            hpalarm = 2;
        
        if (global.playerhealth < 25)
            hpalarm = 3;
    }
    
    if (hudflash > 0)
    {
        hudflash -= 1;
        
        if (hudflashfx > 0)
            hudflashfx -= 1;
        else
            hudflashfx = 4;
    }
}

view_wport[0] = 320;
view_wview[0] = 320;
view_hport[0] = 240;
view_hview[0] = 240;

if (window_get_fullscreen())
{
    if (global.opscale == 0)
    {
        if (!widescreen)
        {
            if (display_get_height() < display_get_width())
                display_scale = display_get_height() / 240;
            else
                display_scale = display_get_width() / 320;
        }
        else if (((display_get_width() / (320 + widescreen_space)) * 240) <= display_get_height())
        {
            display_scale = display_get_width() / (320 + widescreen_space);
        }
        else
        {
            display_scale = display_get_height() / 240;
        }
    }
    else
    {
        display_scale = global.opscale;
    }
    
    displayx = (display_get_width() / 2) - (((320 + widescreen_space) * display_scale) / 2);
    displayy = (display_get_height() / 2) - ((240 * display_scale) / 2);
}
else
{
    if (window_get_height() < window_get_width())
        display_scale = window_get_height() / 240;
    else
        display_scale = window_get_width() / (320 + widescreen_space);
    
    displayx = (window_get_width() / 2) - (((320 + widescreen_space) * display_scale) / 2);
    displayy = (window_get_height() / 2) - ((240 * display_scale) / 2);
}

if (surface_exists(gui_surface))
{
    if (surface_get_width(gui_surface) != (320 + widescreen_space))
        surface_free(gui_surface);
}

if (!surface_exists(gui_surface))
    gui_surface = surface_create(320 + widescreen_space, 240);

if (surface_exists(gui_surface))
{
    surface_set_target(gui_surface);
    draw_clear_alpha(c_black, 0);
    
    if (global.ingame && displaygui && instance_exists(oCharacter))
        draw_gui();
    
    surface_reset_target();
}

if (debug > 0)
{
    global.playerhealth = global.maxhealth;
    global.missiles = 99;
    global.smissiles = 99;
    global.pbombs = 99;
}

if (black > 0)
    black -= 1;

if (os_is_paused())
    keyboard_clear(vk_alt);

if (instance_exists(oCharacter) && mod_IGT && !instance_exists(oIGT))
    instance_create(0, 0, oIGT);

switch (palette)
{
    case 0:
        if (MultitroidPalette != MultitroidPaletteDefault)
            MultitroidPalette = MultitroidPaletteDefault;
        
        if (MultitroidPaletteFusion != MultitroidPaletteFusionDefault)
            MultitroidPaletteFusion = MultitroidPaletteFusionDefault;
        
        if (SpiderballPalette != SpiderballPaletteDefault)
            SpiderballPalette = SpiderballPaletteDefault;
        
        if (MultitroidBabyPalette != MultitroidBabyPaletteDefault)
            MultitroidBabyPalette = MultitroidBabyPaletteDefault;
        
        if (MultitroidIcon != MultitroidIconDefault)
            MultitroidIcon = MultitroidIconDefault;
        
        if (MultitroidIconDark != MultitroidIconDarkDefault)
            MultitroidIconDark = MultitroidIconDarkDefault;
        
        if (MultitroidMapIcon != MultitroidMapIconDefault)
            MultitroidMapIcon = MultitroidMapIconDefault;
        
        if (MultitroidSubScr != MultitroidSubScrDefault)
            MultitroidSubScr = MultitroidSubScrDefault;
        
        break;
    
    case 1:
        if (MultitroidPalette != MultitroidPaletteColor)
            MultitroidPalette = MultitroidPaletteColor;
        
        if (MultitroidPaletteFusion != MultitroidPaletteFusionColor)
            MultitroidPaletteFusion = MultitroidPaletteFusionColor;
        
        if (SpiderballPalette != SpiderballPaletteColor)
            SpiderballPalette = SpiderballPaletteColor;
        
        if (MultitroidBabyPalette != MultitroidBabyPaletteColor)
            MultitroidBabyPalette = MultitroidBabyPaletteColor;
        
        if (MultitroidIcon != MultitroidIconColor)
            MultitroidIcon = MultitroidIconColor;
        
        if (MultitroidIconDark != MultitroidIconDarkColor)
            MultitroidIconDark = MultitroidIconDarkColor;
        
        if (MultitroidMapIcon != MultitroidMapIconColor)
            MultitroidMapIcon = MultitroidMapIconColor;
        
        if (MultitroidSubScr != MultitroidSubScrDefault)
            MultitroidSubScr = MultitroidSubScrDefault;
        
        break;
    
    case 2:
        if (MultitroidPalette != MultitroidPaletteCustom)
            MultitroidPalette = MultitroidPaletteCustom;
        
        if (MultitroidPaletteFusion != MultitroidPaletteFusionCustom)
            MultitroidPaletteFusion = MultitroidPaletteFusionCustom;
        
        if (SpiderballPalette != SpiderballPaletteCustom)
            SpiderballPalette = SpiderballPaletteCustom;
        
        if (MultitroidBabyPalette != MultitroidBabyPaletteCustom)
            MultitroidBabyPalette = MultitroidBabyPaletteCustom;
        
        if (MultitroidIcon != MultitroidIconCustom)
            MultitroidIcon = MultitroidIconCustom;
        
        if (MultitroidIconDark != MultitroidIconDarkCustom)
            MultitroidIconDark = MultitroidIconDarkCustom;
        
        if (MultitroidMapIcon != MultitroidMapIconCustom)
            MultitroidMapIcon = MultitroidMapIconCustom;
        
        if (MultitroidSubScr != MultitroidSubScrSpecial)
            MultitroidSubScr = MultitroidSubScrSpecial;
        
        break;
    
    case 3:
        if (MultitroidPalette != 66)
            MultitroidPalette = 66;
        
        if (MultitroidPaletteFusion != 66)
            MultitroidPaletteFusion = 66;
        
        if (SpiderballPalette != 66)
            SpiderballPalette = 66;
        
        if (MultitroidBabyPalette != 66)
            MultitroidBabyPalette = 66;
        
        if (MultitroidSubScr != 66)
            MultitroidSubScr = 66;
        
        break;
}

hudpal = 0;

if (!oControl.useselfpalette && os_type != os_android)
{
    if (!oControl.mod_fusion && global.currentsuit == 2 && oControl.hudoption != 2)
        hudpal = 1;
    
    if (oControl.mod_fusion && (!global.ibeam || !oControl.omegaEnabled) && oControl.hudoption < 2)
        hudpal = 1;
}
else if (oControl.useselfpalette && os_type != os_android)
{
    if (oControl.preferredcolor != 17)
    {
        if (oControl.palette == 0 || oControl.palette == 1)
            hudpal = oControl.preferredcolor + 1;
        
        if (oControl.palette == 2)
            hudpal = oControl.preferredcolor + 17;
    }
    
    if (instance_exists(oClient) && oClient.connected)
    {
        if (oControl.palette == 0 || oControl.palette == 1)
            hudpal = oClient.preferredcolor + 1;
        
        if (oControl.palette == 2)
            hudpal = oClient.preferredcolor + 17;
    }
}

if (oControl.hudoption == 1 && oControl.palette != 3 && os_type != os_android)
    hudpal = oControl.guicolor + 33;

if (oControl.preferredcolor != 17 || (instance_exists(oClient) && oClient.connected) || oControl.hudoption == 1)
    oControl.paletteColor = oControl.hudpal;

switch (oControl.hudpal)
{
    case 0:
    case 4:
    case 5:
    case 6:
    case 12:
    case 13:
    case 14:
    case 16:
    case 34:
        oControl.paletteBrightGreen = make_color_rgb(8, 253, 140);
        oControl.paletteGreen = make_color_rgb(2, 207, 118);
        oControl.paletteMedGreen = make_color_rgb(1, 142, 81);
        oControl.paletteDarkGreen = make_colour_rgb(1, 24, 25);
        break;
    
    case 28:
    case 29:
    case 35:
        oControl.paletteBrightGreen = make_color_rgb(255, 148, 173);
        oControl.paletteGreen = make_color_rgb(255, 31, 75);
        oControl.paletteMedGreen = make_colour_rgb(128, 0, 34);
        oControl.paletteDarkGreen = make_colour_rgb(23, 0, 31);
        break;
    
    case 1:
    case 2:
    case 3:
    case 4:
    case 7:
    case 8:
    case 10:
    case 11:
    case 15:
    case 20:
    case 36:
        oControl.paletteBrightGreen = make_color_rgb(7, 252, 249);
        oControl.paletteGreen = make_color_rgb(1, 179, 244);
        oControl.paletteMedGreen = make_color_rgb(2, 103, 197);
        oControl.paletteDarkGreen = make_colour_rgb(3, 7, 48);
        break;
    
    case 37:
        oControl.paletteBrightGreen = make_color_rgb(255, 255, 194);
        oControl.paletteGreen = make_color_rgb(226, 251, 80);
        oControl.paletteMedGreen = make_colour_rgb(160, 149, 3);
        oControl.paletteDarkGreen = make_colour_rgb(15, 31, 0);
        break;
    
    case 38:
        oControl.paletteBrightGreen = make_color_rgb(255, 207, 148);
        oControl.paletteGreen = make_color_rgb(255, 132, 31);
        oControl.paletteMedGreen = make_colour_rgb(128, 51, 0);
        oControl.paletteDarkGreen = make_colour_rgb(31, 0, 0);
        break;
    
    case 39:
        oControl.paletteBrightGreen = make_color_rgb(246, 148, 255);
        oControl.paletteGreen = make_color_rgb(203, 31, 255);
        oControl.paletteMedGreen = make_colour_rgb(92, 0, 128);
        oControl.paletteDarkGreen = make_colour_rgb(8, 0, 31);
        break;
    
    case 40:
        oControl.paletteBrightGreen = make_color_rgb(255, 184, 226);
        oControl.paletteGreen = make_color_rgb(236, 70, 186);
        oControl.paletteMedGreen = make_colour_rgb(113, 9, 134);
        oControl.paletteDarkGreen = make_colour_rgb(14, 0, 31);
        break;
    
    case 41:
        oControl.paletteBrightGreen = make_color_rgb(255, 255, 255);
        oControl.paletteGreen = make_color_rgb(218, 228, 236);
        oControl.paletteMedGreen = make_colour_rgb(134, 157, 172);
        oControl.paletteDarkGreen = make_colour_rgb(18, 19, 28);
        break;
    
    case 42:
        oControl.paletteBrightGreen = make_color_rgb(238, 255, 148);
        oControl.paletteGreen = make_color_rgb(197, 255, 36);
        oControl.paletteMedGreen = make_colour_rgb(75, 128, 0);
        oControl.paletteDarkGreen = make_colour_rgb(4, 31, 0);
        break;
    
    case 43:
        oControl.paletteBrightGreen = make_color_rgb(255, 224, 148);
        oControl.paletteGreen = make_color_rgb(249, 170, 67);
        oControl.paletteMedGreen = make_colour_rgb(138, 68, 10);
        oControl.paletteDarkGreen = make_colour_rgb(31, 0, 0);
        break;
    
    case 44:
        oControl.paletteBrightGreen = make_color_rgb(166, 255, 252);
        oControl.paletteGreen = make_color_rgb(31, 249, 255);
        oControl.paletteMedGreen = make_colour_rgb(0, 121, 128);
        oControl.paletteDarkGreen = make_colour_rgb(0, 15, 31);
        break;
    
    case 45:
        oControl.paletteBrightGreen = make_color_rgb(255, 228, 173);
        oControl.paletteGreen = make_color_rgb(253, 206, 68);
        oControl.paletteMedGreen = make_colour_rgb(192, 113, 2);
        oControl.paletteDarkGreen = make_colour_rgb(31, 6, 0);
        break;
    
    case 46:
        oControl.paletteBrightGreen = make_color_rgb(237, 194, 146);
        oControl.paletteGreen = make_color_rgb(208, 116, 62);
        oControl.paletteMedGreen = make_colour_rgb(110, 49, 13);
        oControl.paletteDarkGreen = make_colour_rgb(31, 8, 0);
        break;
    
    case 47:
        oControl.paletteBrightGreen = make_color_rgb(203, 184, 255);
        oControl.paletteGreen = make_color_rgb(121, 77, 245);
        oControl.paletteMedGreen = make_colour_rgb(53, 0, 133);
        oControl.paletteDarkGreen = make_colour_rgb(1, 0, 25);
        break;
    
    case 48:
        oControl.paletteBrightGreen = make_color_rgb(255, 194, 254);
        oControl.paletteGreen = make_color_rgb(253, 48, 226);
        oControl.paletteMedGreen = make_colour_rgb(128, 0, 89);
        oControl.paletteDarkGreen = make_colour_rgb(19, 0, 25);
        break;
    
    case 49:
        oControl.paletteBrightGreen = make_color_rgb(223, 255, 184);
        oControl.paletteGreen = make_color_rgb(234, 157, 129);
        oControl.paletteMedGreen = make_colour_rgb(164, 103, 82);
        oControl.paletteDarkGreen = make_colour_rgb(23, 5, 0);
        break;
    
    case 18:
        oControl.paletteBrightGreen = make_color_rgb(252, 211, 143);
        oControl.paletteGreen = make_color_rgb(204, 162, 97);
        oControl.paletteMedGreen = make_color_rgb(91, 52, 0);
        oControl.paletteDarkGreen = make_color_rgb(17, 8, 0);
    
    case 19:
        oControl.paletteBrightGreen = make_color_rgb(255, 245, 153);
        oControl.paletteGreen = make_color_rgb(202, 159, 2);
        oControl.paletteMedGreen = make_color_rgb(125, 78, 7);
        oControl.paletteDarkGreen = make_color_rgb(49, 8, 21);
        break;
    
    case 17:
        oControl.paletteBrightGreen = make_color_rgb(251, 171, 60);
        oControl.paletteGreen = make_color_rgb(250, 138, 25);
        oControl.paletteMedGreen = make_color_rgb(112, 48, 26);
        oControl.paletteDarkGreen = make_color_rgb(39, 7, 9);
        break;
    
    case 21:
    case 9:
        oControl.paletteBrightGreen = make_color_rgb(251, 235, 60);
        oControl.paletteGreen = make_color_rgb(250, 213, 25);
        oControl.paletteMedGreen = make_color_rgb(112, 77, 26);
        oControl.paletteDarkGreen = make_color_rgb(39, 16, 7);
        break;
    
    case 22:
        oControl.paletteBrightGreen = make_color_rgb(108, 254, 215);
        oControl.paletteGreen = make_color_rgb(6, 190, 157);
        oControl.paletteMedGreen = make_color_rgb(16, 86, 71);
        oControl.paletteDarkGreen = make_color_rgb(7, 20, 34);
        break;
    
    case 23:
        oControl.paletteBrightGreen = make_color_rgb(116, 247, 244);
        oControl.paletteGreen = make_color_rgb(2, 197, 184);
        oControl.paletteMedGreen = make_color_rgb(2, 83, 142);
        oControl.paletteDarkGreen = make_color_rgb(3, 16, 48);
        break;
    
    case 24:
        oControl.paletteBrightGreen = make_color_rgb(255, 173, 248);
        oControl.paletteGreen = make_color_rgb(225, 68, 253);
        oControl.paletteMedGreen = make_color_rgb(109, 1, 131);
        oControl.paletteDarkGreen = make_color_rgb(15, 0, 31);
        break;
    
    case 25:
        oControl.paletteBrightGreen = make_color_rgb(198, 234, 237);
        oControl.paletteGreen = make_color_rgb(139, 197, 216);
        oControl.paletteMedGreen = make_color_rgb(66, 101, 138);
        oControl.paletteDarkGreen = make_color_rgb(13, 23, 48);
        break;
    
    case 26:
        oControl.paletteBrightGreen = make_color_rgb(0, 232, 216);
        oControl.paletteGreen = make_color_rgb(0, 178, 194);
        oControl.paletteMedGreen = make_color_rgb(22, 77, 96);
        oControl.paletteDarkGreen = make_color_rgb(7, 13, 29);
        break;
    
    case 30:
        oControl.paletteBrightGreen = make_color_rgb(223, 239, 189);
        oControl.paletteGreen = make_color_rgb(190, 185, 131);
        oControl.paletteMedGreen = make_color_rgb(92, 82, 46);
        oControl.paletteDarkGreen = make_color_rgb(30, 13, 0);
        break;
    
    case 31:
    case 32:
        oControl.paletteBrightGreen = make_color_rgb(238, 255, 148);
        oControl.paletteGreen = make_color_rgb(197, 255, 36);
        oControl.paletteMedGreen = make_color_rgb(40, 80, 1);
        oControl.paletteDarkGreen = make_color_rgb(4, 31, 0);
        break;
    
    case 33:
        oControl.paletteBrightGreen = make_color_rgb(223, 255, 184);
        oControl.paletteGreen = make_color_rgb(135, 202, 47);
        oControl.paletteMedGreen = make_color_rgb(1, 101, 88);
        oControl.paletteDarkGreen = make_color_rgb(5, 31, 31);
        break;
}

if (oControl.hudoption == 2 || oControl.gamehud)
{
    oControl.paletteBrightGreen = make_color_rgb(8, 253, 140);
    oControl.paletteGreen = make_color_rgb(2, 207, 118);
    oControl.paletteMedGreen = make_color_rgb(1, 142, 81);
    oControl.paletteDarkGreen = make_colour_rgb(1, 24, 25);
}

if (omegaSetting == 1 && global.saxmode)
    omegaEnabled = 1;
else
    omegaEnabled = 0;

if (omegaSetting == 2)
    omegaEnabled = 1;

if (omegaSetting == 0)
    omegaEnabled = 0;

switch (oControl.XVariantsOption)
{
    case 0:
        oControl.XVariantsEnabled = 0;
        break;
    
    case 1:
        if (oControl.mod_fusion)
            oControl.XVariantsEnabled = 1;
        else
            oControl.XVariantsEnabled = 0;
        
        break;
    
    case 2:
        if (oControl.mod_fusion || global.saxmode)
            oControl.XVariantsEnabled = 1;
        else
            oControl.XVariantsEnabled = 0;
        
        break;
    
    case 3:
        oControl.XVariantsEnabled = 1;
        break;
}

global.scannerSpeed--;

if (global.scannerSpeed <= 0)
{
    global.scannerSpeed = global.scannerSpeedMax;
    global.scannerIndex++;
    
    switch (global.scannerSprite)
    {
        case 1882:
            if (global.scannerIndex > 3)
                global.scannerIndex = 0;
            
            break;
        
        default:
            if (global.scannerIndex > 4)
                global.scannerIndex = 0;
            
            break;
    }
}

if (global.showHealthIndicatorsTimer == 1)
    global.saveStationCooldown = 1200;

if (global.showHealthIndicatorsTimer > 0)
{
    global.showHealthIndicatorsTimer--;
    global.showHealthIndicators = 1;
}
else
{
    global.showHealthIndicators = 0;
}

if (global.escapeTimer > 0)
    global.escapeTimer--;

if (global.pbombCooldown < 600)
    global.pbombCooldown++;

if (global.item[0] == 1 || (global.showHealthIndicators && global.saxmode))
    global.pbombCooldownMax = 600;
else
    global.pbombCooldownMax = 300;

var setIFrames = 0;

if (global.playerFreeze == 1)
    setIFrames = 1;

if (global.playerFreeze > 0)
    global.playerFreeze--;

if (global.playerFreeze == 0)
{
    global.frozenNormally = 0;
    global.frozenByRollback = 0;
}

if (setIFrames)
{
    if (instance_exists(oCharacter))
        oCharacter.invincible = 180;
}

if (global.fxtimer < 5)
    global.fxtimer += 1;
else
    global.fxtimer = 0;

if (global.saxmode && !global.sax)
    global.icemissiles = 1;
else
    global.icemissiles = 0;

if (global.saxmode)
    global.event[176] = 1;

if (global.reformTimer > 0 && global.spectator && global.sax)
    global.reformTimer--;

if (!global.spectator)
    global.reformTimer = 1200;

if (global.playerMapPosTimer == 1)
    global.mapmarker = 0;

if (global.playerMapPosTimer > 0)
    global.playerMapPosTimer--;

if (global.warpPipeCooldown > 0)
    global.warpPipeCooldown--;

if (global.saveStationCooldown > 0)
    global.saveStationCooldown--;

if (!instance_exists(oClient))
    global.shortcuts = 0;

if (!global.lobbyLocked)
    global.countdowncontrol = 180;
else
    global.countdowncontrol = max(global.countdowncontrol - 1, -60);

if (global.countdowncontrol == 0)
    sfx_play(417);
