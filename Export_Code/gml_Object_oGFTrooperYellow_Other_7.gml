if (sprite_index != sGFTrooperYellowDead)
{
    if (shots > 0)
    {
        shot = instance_create((x + 22), (y - 36), oGFTBullet1)
        shot.direction = (7 + random(3))
        shot.image_angle = shot.direction
        shot.speed = 8
        shots -= 1
        sfx_play(sndGFTrooperGunShot)
    }
    else
    {
        image_speed = 0
        image_index = 0
        alarm[1] = 40
    }
}
