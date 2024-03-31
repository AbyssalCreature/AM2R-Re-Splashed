if (bgyoff < 400)
    bgyoff += 0.25
if (statetime == 60)
    canskip = 1
if (active == 0)
{
    if (statetime == 300)
        instance_create(160, 120, oTitleText1)
    if (statetime == 900)
        instance_create(160, 120, oTitleText2)
}
if (active == 0 && (statetime == 1600 || (canskip == 1 && ((oControl.kMenu1 && oControl.kMenu1PushedSteps == 1) || (oControl.kMenu2 && oControl.kMenu2PushedSteps == 1) || (oControl.kStart && oControl.kStartPushedSteps == 1)))))
{
    with (oPressStart)
        visible = true
    with (oDrawTitleBG)
        fadein = 1
    with (oTitleText1)
        instance_destroy()
    with (oTitleText2)
        instance_destroy()
    active = 1
}
if active
    bgyoff = lerp(bgyoff, 400, 0.02)
statetime += 1
