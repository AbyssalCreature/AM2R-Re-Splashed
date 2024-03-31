if (point_distance(x, y, oCharacter.x, y) < radius)
    vol = maxvol
else if (point_distance(x, y, oCharacter.x, y) < maxradius)
    vol = (maxvol - (((point_distance(x, y, oCharacter.x, y) - radius) / (maxradius - radius)) * (maxvol - minvol)))
else
    vol = minvol
if (room == rm_a3a21)
{
    if (global.movingobj == 0)
        vol = 0
}
if playing
    audio_sound_gain(sound, ((vol * global.opsoundvolume) / 100), 0)
