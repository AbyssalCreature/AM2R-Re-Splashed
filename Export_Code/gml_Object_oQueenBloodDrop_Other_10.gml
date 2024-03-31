if (vspeed != 0)
{
    repeat (4)
    {
        expl = instance_create(x, (y + 2), oFXAnimSpark)
        expl.image_speed = 0.2
        expl.additive = 0
        expl.sprite_index = sQueenBloodParticle
        expl.direction = (45 + random(90))
        expl.speed = (1 + random(1))
        expl.gravity_direction = 270
        expl.gravity = 0.2
    }
    snd = floor(random(3))
    switch snd
    {
        case 0:
            PlaySoundVisible(sndQueenBlood1, x, y)
            break
        case 1:
            PlaySoundVisible(sndQueenBlood2, x, y)
            break
        case 2:
            PlaySoundVisible(sndQueenBlood3, x, y)
            break
    }

    instance_destroy()
}
