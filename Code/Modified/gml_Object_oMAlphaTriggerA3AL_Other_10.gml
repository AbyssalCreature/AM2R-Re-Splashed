met = instance_create(x, y, oMAlpha)
met.facing = facing
met.myid = myid
met.spriteset = 2
with (met)
{
    set_monster_vars(myid)
    shell = instance_create(x, y, oMAlphaShell)
    shell.damage = damage
    shell.hpush = 5
    shell.vpush = -3
}
sfx_play(sndMAlphaIntro)
global.monstersalive += 1
instance_destroy()
