if (jumpRight == 1 && sprite_index == sHornoadJump && floor(image_index) == 3)
{
    physics_apply_local_impulse(0, 10, 15, -50)
    physics_apply_torque(0)
    jumpRight = 0
}
if (jumpRightFast == 1 && sprite_index == sHornoadJump && floor(image_index) == 3)
{
    physics_apply_local_impulse(0, 10, 14, -45)
    physics_apply_torque(0)
    jumpRightFast = 0
}
if (jumpLeft == 1 && sprite_index == sHornoadJump && floor(image_index) == 3)
{
    physics_apply_local_impulse(0, 10, -15, -50)
    physics_apply_torque(0)
    jumpLeft = 0
}
