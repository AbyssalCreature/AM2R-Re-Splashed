with (other.id)
{
    max_down_speed = 1
    max_up_speed = 2
    material = 2
    viscidTop = 1
    makeActive()
    image_index = choose(1, 2, 3)
    frequency = 0.1
    amplitude = 2
    timer = irandom(100)
    parent = irandom(3)
    grounded = 0
    lift = 0
    yy = (sin((timer * frequency)) * amplitude)
    alarm[1] = 1
}
