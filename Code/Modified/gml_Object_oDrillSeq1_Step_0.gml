if active
    camtargetx = ((oCharacter.x + 100) - (oControl.widescreen_space / 2))
else
    camtargetx = oCharacter.x
if (x != camtargetx)
    x += ((camtargetx - x) / 8)
