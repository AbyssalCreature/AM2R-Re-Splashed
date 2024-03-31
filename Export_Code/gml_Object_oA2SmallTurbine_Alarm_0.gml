if lbubbles
{
    b = instance_create((x - 96), ((y - 4) - random(24)), oCurrentBubble)
    b.hspeed = (3 + random(1))
    b.xlimit = x
}
if rbubbles
{
    b = instance_create((x + 112), ((y - 4) - random(24)), oCurrentBubble)
    b.hspeed = (-3 - random(1))
    b.xlimit = (x + 32)
}
alarm[0] = (5 + random(3))
