spr_set = floor(oTorizo2.image_index)
if (oTorizo2.state == 5)
    spr_set = -1
if (oTorizo2.state == 2)
    spr_set = 0
tf = oTorizo2.facing
jetfade = max(0.05, (0.2 + (oTorizo2.vspeed / 20)))
if (state == 0)
{
    if (statetime == 120)
        sfx_play(sndTorizoWingsDeploy)
    if (statetime > 120)
    {
        if (image_index < 6)
            image_index += 0.2
    }
    if (statetime == 200)
    {
        state = 1
        sfx_play(sndTorizoWingsActivate)
    }
}
if (state == 1)
{
    if (spr_set == 2)
    {
        jet = instance_create(((x + offset2) + 7), (y + 4), oTorizoJetFX)
        jet.fadespeed = jetfade
        jet = instance_create(((x + offset2) + 21), (y - 4), oTorizoJetFX)
        jet.fadespeed = jetfade
        jet = instance_create(((x + offset2) + 35), (y - 11), oTorizoJetFX)
        jet.fadespeed = jetfade
        jet = instance_create(((x - offset2) - 7), (y + 4), oTorizoJetFX)
        jet.fadespeed = jetfade
        jet = instance_create(((x - offset2) - 21), (y - 4), oTorizoJetFX)
        jet.fadespeed = jetfade
        jet = instance_create(((x - offset2) - 35), (y - 11), oTorizoJetFX)
        jet.fadespeed = jetfade
    }
    if (spr_set == 1)
    {
        jet = instance_create((x + ((offset1 + 5) * tf)), (y + 4), oTorizoJetFX)
        jet.image_xscale = 0.5
        jet.fadespeed = jetfade
        jet = instance_create((x + ((offset1 + 14) * tf)), (y - 4), oTorizoJetFX)
        jet.image_xscale = 0.5
        jet.fadespeed = jetfade
        jet = instance_create((x + ((offset1 + 23) * tf)), (y - 8), oTorizoJetFX)
        jet.image_xscale = 0.5
        jet.fadespeed = jetfade
        jet = instance_create((x - ((offset1 + 7) * tf)), (y + 4), oTorizoJetFX)
        jet.image_xscale = 0.8
        jet.fadespeed = jetfade
        jet = instance_create((x - ((offset1 + 18) * tf)), (y - 4), oTorizoJetFX)
        jet.image_xscale = 0.8
        jet.fadespeed = jetfade
        jet = instance_create((x - ((offset1 + 30) * tf)), (y - 8), oTorizoJetFX)
        jet.image_xscale = 0.8
        jet.fadespeed = jetfade
    }
    if (spr_set == 0)
    {
        jet = instance_create((x - ((offset0 + 5) * tf)), (y + 4), oTorizoJetFX)
        jet.image_xscale = 0.5
        jet.fadespeed = jetfade
        jet = instance_create((x - ((offset0 + 14) * tf)), (y - 4), oTorizoJetFX)
        jet.image_xscale = 0.5
        jet.fadespeed = jetfade
        jet = instance_create((x - ((offset0 + 23) * tf)), (y - 8), oTorizoJetFX)
        jet.image_xscale = 0.5
        jet.fadespeed = jetfade
    }
}
statetime += 1
