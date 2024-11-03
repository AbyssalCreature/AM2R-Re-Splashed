image_angle = direction
repeat floor(random(2))
{
    bubble = instance_create((x + irandom_range(-5, 5)), (y + irandom_range(-5, 5)), oLBubble)
    if instance_exists(bubble)
    {
        bubble.direction = ((-direction) + irandom_range(-35, 35))
        bubble.alarm[0] = (10 + irandom_range(0, 20))
        bubble.speed = 2
        bubble.eris = 1
    }
}
