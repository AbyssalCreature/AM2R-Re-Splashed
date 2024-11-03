global.curropt = 0
opset = 0
editing = 0
ealpha = 0
active = 0
fadeout = 0
rectoffset = 0
dtext = ""
currentsuit = global.currentsuit
sfx_stop(sndSpinJump)
sfx_stop(sndSpaceJump)
sfx_stop(sndScrewAttack)
sfx_stop(sndSpaceScrewAttack)
sfx_stop(sndSpinJumpWater)
tiptext[0] = get_text("Equipment", "PowerSuit_Tip")
tiptext[1] = get_text("Equipment", "VariaSuit_Tip")
tiptext[2] = get_text("Equipment", "GravitySuit_Tip")
tiptext[3] = get_text("Equipment", "ChargeBeam_Tip")
tiptext[4] = get_text("Equipment", "WaveBeam_Tip")
tiptext[5] = get_text("Equipment", "SpazerBeam_Tip")
tiptext[6] = get_text("Equipment", "PlasmaBeam_Tip")
tiptext[7] = get_text("Equipment", "IceBeam_Tip")
tiptext[8] = get_text("Equipment", "MorphBall_Tip")
tiptext[9] = get_text("Equipment", "SpiderBall_Tip")
tiptext[10] = get_text("Equipment", "JumpBall_Tip")
tiptext[11] = get_text("Equipment", "Bombs_Tip")
tiptext[12] = get_text("Equipment", "PowerGrip_Tip")
tiptext[13] = get_text("Equipment", "ScrewAttack_Tip")
tiptext[14] = get_text("Equipment", "HiJump_Tip")
tiptext[15] = get_text("Equipment", "SpaceJump_Tip")
tiptext[16] = get_text("Equipment", "SpeedBooster_Tip")
