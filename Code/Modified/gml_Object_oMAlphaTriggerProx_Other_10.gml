met = instance_create(x, y, oMAlpha)
met.facing = facing
met.myid = myid
met.spriteset = 0
with (met)
{
    set_monster_vars(myid)
    shell = instance_create(x, y, oMAlphaShell)
    shell.damage = damage
    shell.hpush = 5
    shell.vpush = -3
}
if (global.monstersalive == 0)
{
    sfx_stop(sndMAlphaIntro)
    sfx_play(sndMAlphaIntro)
    mus_alpha_monster()
}
with (oMAlphaTriggerProx)
    alarm[0] = 2
global.monstersalive += 1
instance_destroy()
