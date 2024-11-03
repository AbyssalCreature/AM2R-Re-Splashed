var i, proj;
if (type == "ICE" && split == 1)
{
    for (i = 1; i < 5; i++)
    {
        proj = instance_create(x, y, oTankProjectile)
        proj.direction = ((i * 90) - 45)
        proj.image_angle = ((i * 90) - 45)
        proj.type = "ICE"
        proj.split = 0
        proj.speed = 4
        proj.phase = 5
        proj.sprite_index = sTankProj2
    }
}
expl = instance_create(x, y, oFXAnimSpark)
expl.image_speed = 0.5
expl.additive = 0
switch type
{
    case "PLASMA":
        expl.sprite_index = sPBeamExpl
        break
    case "ICE":
        expl.sprite_index = sIBeamExpl
        break
    case "WAVE":
        expl.sprite_index = sWBeamExpl
        break
}

PlaySoundMono(sndProjHit2)
instance_destroy()
