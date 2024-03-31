var inst;
if (global.mod_fusion_unlocked == 1 && oControl.kStart && (!instance_exists(oEndingFadeout)))
{
    inst = instance_create(x, y, oEndingFadeout)
    inst.timer = 70
}
