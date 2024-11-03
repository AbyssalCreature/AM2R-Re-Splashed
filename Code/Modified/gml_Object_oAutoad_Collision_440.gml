event_inherited()
if (yVel != 0)
{
    if (other.direction == 0 || other.direction == 45 || other.direction == 315)
        xVel += 1.8
    if (other.direction == 180 || other.direction == 135 || other.direction == 225)
        xVel -= 1.8
}
