if (shots > 0)
{
    shot = instance_create((x - 20), (y - 29), oGFTBullet1)
    shot.direction = (175 - random(3))
    shot.image_angle = shot.direction
    shot.speed = 6
    sfx_stop(sndGFTrooperRifleShot2)
    sfx_play(sndGFTrooperRifleShot2)
    shots -= 1
}
else
{
    image_speed = 0
    image_index = 0
    alarm[1] = 25
}
