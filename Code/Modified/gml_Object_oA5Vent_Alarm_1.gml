if (open && image_index >= 2)
{
    bubble = instance_create((x + random_range(-8, 8)), (y + random_range(-8, 8)), oLBubble)
    if instance_exists(bubble)
    {
        bubble.alarm[0] = (60 + random(100))
        bubble.depth = -151
    }
}
alarm[1] = 3
