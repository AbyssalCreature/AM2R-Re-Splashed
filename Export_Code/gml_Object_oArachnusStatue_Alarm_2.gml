var sid;
if (state == 0)
{
    state = 1
    sid = sfx_loop(sndQuakeLoop)
    audio_sound_gain(sid, ((0.9 * global.opsoundvolume) / 100), 0)
}
smk = instance_create(((x - 16) + random(40)), y, oFXAnimSpark)
smk.image_speed = 0.5
smk.additive = 0
smk.sprite_index = sSmoke1
smk.image_alpha = 0.6
x += xoffset
xoffset = (-xoffset)
if (state < 2)
    alarm[2] = 2
