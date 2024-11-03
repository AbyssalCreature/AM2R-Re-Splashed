targetx = oCharacter.x
targety = (oCharacter.y - 20)
if instance_exists(oTank)
{
    if (oTankHead.damaged > 0)
    {
        targetx = 1000
        targety = (48 + random(192))
    }
}
gravity_direction = point_direction(x, y, targetx, targety)
gravity = 0.12
image_angle = direction
if (speed > 2.2)
    speed = 2.2
