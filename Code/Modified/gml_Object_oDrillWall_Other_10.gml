x += 16
repeat (20)
{
    expl = instance_create((x - random(16)), (y + random(80)), oFXAnimSpark)
    expl.image_speed = 0.3
    expl.additive = 0
    expl.sprite_index = sExplSmoke2
    expl.depth = -120
}
repeat (8)
{
    mytrail = instance_create((x - random(16)), (y + random(80)), oFXTrail)
    mytrail.sprite_index = sRockPieceA3
    mytrail.image_index = floor(random(6))
    mytrail.image_alpha = 1
    mytrail.fadespeed = 0.005
    mytrail.additive = 0
    mytrail.vspeed = (-1 - random(3))
    mytrail.hspeed = (-2 + random(3))
    mytrail.gravity = 0.2
    mytrail.gravity_direction = 270
    mytrail.depth = -150
}
