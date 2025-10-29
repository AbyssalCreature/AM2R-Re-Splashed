event_inherited()
frz.spr1 = 429
if oControl.mod_fusion
    frz.spr1 = sHalzynShieldFrozen_Fusion
frz.spr1xoff = 8 + shield_offset
frz.spr1yoff = -3
frz.spr1a = shield_angle
frz.spr2 = 429
if oControl.mod_fusion
    frz.spr2 = sHalzynShieldFrozen_Fusion
frz.spr2xoff = -8 - shield_offset
frz.spr2yoff = -3
frz.spr2a = (-shield_angle)
frz.spr2xs = -1
