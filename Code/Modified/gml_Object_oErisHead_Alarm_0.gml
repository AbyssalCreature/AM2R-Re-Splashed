var bubble;
if (state != 100 && inrange)
{
    bubble = instance_create(x, (y - 8), oLBubble)
    if instance_exists(bubble)
    {
        bubble.alarm[0] = 60
        bubble.direction = image_angle
        bubble.speed = (speed * 0.6)
        bubble.depth = -90
    }
}
alarm[0] = (4 + irandom(4))
