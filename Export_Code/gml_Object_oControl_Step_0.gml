var setIFrames;
if (fadedone >= 1 && room != rm_transition && room != rm_subscreen && room != itemroom && room != rm_death)
{
    global.transitiontype = 0
    event_user(4)
}
if (!init)
{
    if (os_type == os_linux)
        linux_keys()
    else if (os_type == os_android)
        touch_keys()
    else
        check_keys()
    if (room != rm_transition && (!global.CONSOLE) && global.playerFreeze == 0)
        global_control()
    if (kExit && global.opexitkeyenable)
        game_end()
    if (kStart && kStartPushedSteps == 0)
        event_user(0)
}
if (global.ingame == 1)
{
    if (malpha > -1)
        malpha -= 0.02
    if (malpha <= 0)
        malpha = 1
    markfr += 0.25
    if (markfr > 4)
        markfr = 0
    global.roomtime += 1
    hpalarm = 0
    if (global.maxhealth < 100)
    {
        if (global.playerhealth < 30)
            hpalarm = 2
        if (global.playerhealth < 10)
            hpalarm = 3
    }
    else if (global.maxhealth < 500)
    {
        if (global.playerhealth < 50)
            hpalarm = 1
        if (global.playerhealth < 30)
            hpalarm = 2
        if (global.playerhealth < 10)
            hpalarm = 3
    }
    else
    {
        if (global.playerhealth < 100)
            hpalarm = 1
        if (global.playerhealth < 50)
            hpalarm = 2
        if (global.playerhealth < 25)
            hpalarm = 3
    }
    if (hudflash > 0)
    {
        hudflash -= 1
        if (hudflashfx > 0)
            hudflashfx -= 1
        else
            hudflashfx = 4
    }
}
view_wport[0] = 320
view_wview[0] = 320
view_hport[0] = 240
view_hview[0] = 240
if window_get_fullscreen()
{
    if (global.opscale == 0)
    {
        if (!widescreen)
        {
            if (display_get_height() < display_get_width())
                display_scale = (display_get_height() / 240)
            else
                display_scale = (display_get_width() / 320)
        }
        else if (((display_get_width() / (320 + widescreen_space)) * 240) <= display_get_height())
            display_scale = (display_get_width() / (320 + widescreen_space))
        else
            display_scale = (display_get_height() / 240)
    }
    else
        display_scale = global.opscale
    displayx = ((display_get_width() / 2) - (((320 + widescreen_space) * display_scale) / 2))
    displayy = ((display_get_height() / 2) - ((240 * display_scale) / 2))
}
else
{
    if (window_get_height() < window_get_width())
        display_scale = (window_get_height() / 240)
    else
        display_scale = (window_get_width() / (320 + widescreen_space))
    displayx = ((window_get_width() / 2) - (((320 + widescreen_space) * display_scale) / 2))
    displayy = ((window_get_height() / 2) - ((240 * display_scale) / 2))
}
if surface_exists(gui_surface)
{
    if (surface_get_width(gui_surface) != (320 + widescreen_space))
        surface_free(gui_surface)
}
if (!surface_exists(gui_surface))
    gui_surface = surface_create((320 + widescreen_space), 240)
if surface_exists(gui_surface)
{
    surface_set_target(gui_surface)
    draw_clear_alpha(c_black, 0)
    if (global.ingame && displaygui && instance_exists(oCharacter))
        draw_gui()
    surface_reset_target()
}
if (debug > 0)
{
    global.playerhealth = global.maxhealth
    global.missiles = 99
    global.smissiles = 99
    global.pbombs = 99
}
if (black > 0)
    black -= 1
if os_is_paused()
    keyboard_clear(vk_alt)
if (instance_exists(oCharacter) && mod_IGT && (!instance_exists(oIGT)))
    instance_create(0, 0, oIGT)
switch palette
{
    case 0:
        if (MultitroidPalette != MultitroidPaletteDefault)
            MultitroidPalette = MultitroidPaletteDefault
        if (MultitroidPaletteFusion != MultitroidPaletteFusionDefault)
            MultitroidPaletteFusion = MultitroidPaletteFusionDefault
        if (SpiderballPalette != SpiderballPaletteDefault)
            SpiderballPalette = SpiderballPaletteDefault
        if (MultitroidBabyPalette != MultitroidBabyPaletteDefault)
            MultitroidBabyPalette = MultitroidBabyPaletteDefault
        if (MultitroidIcon != MultitroidIconDefault)
            MultitroidIcon = MultitroidIconDefault
        if (MultitroidIconDark != MultitroidIconDarkDefault)
            MultitroidIconDark = MultitroidIconDarkDefault
        if (MultitroidMapIcon != MultitroidMapIconDefault)
            MultitroidMapIcon = MultitroidMapIconDefault
        break
    case 1:
        if (MultitroidPalette != MultitroidPaletteColor)
            MultitroidPalette = MultitroidPaletteColor
        if (MultitroidPaletteFusion != MultitroidPaletteFusionColor)
            MultitroidPaletteFusion = MultitroidPaletteFusionColor
        if (SpiderballPalette != SpiderballPaletteColor)
            SpiderballPalette = SpiderballPaletteColor
        if (MultitroidBabyPalette != MultitroidBabyPaletteColor)
            MultitroidBabyPalette = MultitroidBabyPaletteColor
        if (MultitroidIcon != MultitroidIconColor)
            MultitroidIcon = MultitroidIconColor
        if (MultitroidIconDark != MultitroidIconDarkColor)
            MultitroidIconDark = MultitroidIconDarkColor
        if (MultitroidMapIcon != MultitroidMapIconColor)
            MultitroidMapIcon = MultitroidMapIconColor
        break
    case 2:
        if (MultitroidPalette != MultitroidPaletteCustom)
            MultitroidPalette = MultitroidPaletteCustom
        if (MultitroidPaletteFusion != MultitroidPaletteFusionCustom)
            MultitroidPaletteFusion = MultitroidPaletteFusionCustom
        if (SpiderballPalette != SpiderballPaletteCustom)
            SpiderballPalette = SpiderballPaletteCustom
        if (MultitroidBabyPalette != MultitroidBabyPaletteCustom)
            MultitroidBabyPalette = MultitroidBabyPaletteCustom
        if (MultitroidIcon != MultitroidIconCustom)
            MultitroidIcon = MultitroidIconCustom
        if (MultitroidIconDark != MultitroidIconDarkCustom)
            MultitroidIconDark = MultitroidIconDarkCustom
        if (MultitroidMapIcon != MultitroidMapIconCustom)
            MultitroidMapIcon = MultitroidMapIconCustom
        break
    case 3:
        if (MultitroidPalette != 66)
            MultitroidPalette = 66
        if (MultitroidPaletteFusion != 66)
            MultitroidPaletteFusion = 66
        if (SpiderballPalette != 66)
            SpiderballPalette = 66
        if (MultitroidBabyPalette != 66)
            MultitroidBabyPalette = 66
        break
}

global.scannerSpeed--
if (global.scannerSpeed <= 0)
{
    global.scannerSpeed = global.scannerSpeedMax
    global.scannerIndex++
    switch global.scannerSprite
    {
        case 1882:
            if (global.scannerIndex > 3)
                global.scannerIndex = 0
            break
        default:
            if (global.scannerIndex > 4)
                global.scannerIndex = 0
            break
    }

}
if (global.showHealthIndicatorsTimer == 1)
    global.saveStationCooldown = 1200
if (global.showHealthIndicatorsTimer > 0)
{
    global.showHealthIndicatorsTimer--
    global.showHealthIndicators = 1
}
else
    global.showHealthIndicators = 0
if (global.escapeTimer > 0)
    global.escapeTimer--
if (global.pbombCooldown < 600)
    global.pbombCooldown++
setIFrames = 0
if (global.playerFreeze == 1)
    setIFrames = 1
if (global.playerFreeze > 0)
    global.playerFreeze--
if (global.playerFreeze == 0)
{
    global.frozenNormally = 0
    global.frozenByRollback = 0
}
if setIFrames
{
    if instance_exists(oCharacter)
        oCharacter.invincible = 180
}
if (global.fxtimer < 5)
    global.fxtimer += 1
else
    global.fxtimer = 0
if (global.saxmode && (!global.sax))
    global.icemissiles = 1
else
    global.icemissiles = 0
if (global.reformTimer > 0 && global.spectator && global.sax)
    global.reformTimer--
if (!global.spectator)
    global.reformTimer = 1200
if (global.playerMapPosTimer == 1)
    global.mapmarker = 0
if (global.playerMapPosTimer > 0)
    global.playerMapPosTimer--
if (global.warpPipeCooldown > 0)
    global.warpPipeCooldown--
if (global.saveStationCooldown > 0)
    global.saveStationCooldown--
if (!instance_exists(oClient))
    global.experimental = 0
