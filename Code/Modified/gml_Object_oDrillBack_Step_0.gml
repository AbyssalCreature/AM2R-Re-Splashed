if active
{
    image_speed = 0.2
    wheel_angle += 2
    if (wheel_angle > 360)
        wheel_angle -= 360
    if (slot_alpha < 1)
        slot_alpha += 0.05
}
else
{
    image_speed = 0
    if (slot_alpha > 0)
        slot_alpha -= 0.01
}
