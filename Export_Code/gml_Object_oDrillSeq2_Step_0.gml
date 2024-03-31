if active
    camtargetx = ((oCharacter.x + 100) - (oControl.widescreen_space / 2))
else
    camtargetx = oCharacter.x
if oControl.widescreen
    camtargetx = clamp(camtargetx, oCamera.limit, (room_width - oCamera.limit))
if (x != camtargetx)
    x += ((camtargetx - x) / 8)
