targetx = 640
xpos = 288
camtargetx = ((x + 160) - (oControl.widescreen_space / 2))
alarm[0] = 120
steps = 0
view_object[0] = oDrillSeq1
active = 1
with (123920)
    instance_destroy()
with (123940)
    instance_destroy()
with (123919)
    instance_destroy()
with (123900)
    instance_destroy()
with (oDrillTrigger2)
    active = 0
sfx_play(sndMorphBallSlot)
sfx_play(sndA2WJStartup)
advancing = 0
