if (global.ssmode == 0)
{
    instance_create(0, 0, oDrawMap2)
    instance_create(0, 0, oMapCursor)
}
if (global.ssmode == 1)
{
    instance_create(0, 0, oSubscreenMenu)
    instance_create((56 - floor((oControl.widescreen_space / 3))), 56, oSubScreenSuit)
    instance_create((56 - floor((oControl.widescreen_space / 3))), 184, oSubScreenBeam)
    instance_create((264 + floor((oControl.widescreen_space / 3))), 56, oSubScreenMisc)
    instance_create((264 + floor((oControl.widescreen_space / 3))), 184, oSubScreenBoots)
    instance_create(160, 52, oSubScrPlayer)
}
if (global.ssmode == 2)
    instance_create(0, 0, oLogScreenControl)
if (global.ssmode == 3)
    instance_create(50, 92, oPauseMenuOptions)
