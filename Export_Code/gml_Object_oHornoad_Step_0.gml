action_inherited()
enemy_active_check(20)
enemy_target_check(140, 0)
if (active == 1 && frozen == 0)
{
    yVel += 0.2
    if (oCharacter.y <= (y - 32) && target == 1)
        jumpheight = -4
    else
        jumpheight = -2
    if (state == 4)
    {
        if (image_index >= 3 && image_index <= 4)
        {
            y -= 1
            yVel = (jumpheight - (timer / 50))
            xVel = (1 * facing)
        }
    }
    if (isCollisionBottom(1) == 1)
    {
        yVel = 0
        if (state == 4 && image_index >= 5)
        {
            state = 1
            xVel = 0
        }
    }
    if (isCollisionRight(4) && facing == 1 && state == 1)
    {
        facing = -1
        state = 3
    }
    if (isCollisionLeft(4) && facing == -1 && state == 1)
    {
        facing = 1
        state = 3
    }
    if (state == 5 && image_index >= 4 && image_index <= 5 && canattack == 1)
    {
        projectile = instance_create(x, (y - 4), oHornoadSpit)
        projectile.vspeed = -3
        projectile.hspeed = (6 * facing)
        canattack = 0
    }
    if (stun == 0)
        moveTo(xVel, yVel)
}
if (state == 100)
    enemy_death()
if (frozen == 0)
    image_speed = 0.2
else
    image_speed = 0
if (state == 1)
    sprite_index = sHornoadIdle
if (state == 2)
    sprite_index = sHornoadShake
if (state == 3)
    sprite_index = sHornoadTurn
if (state == 4)
    sprite_index = sHornoadJump
if (state == 5)
    sprite_index = sHornoadAttack
