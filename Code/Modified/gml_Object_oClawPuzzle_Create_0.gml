claw1 = instance_create(x, y, oClawOrb)
claw1.duration = 65
claw2 = instance_create((x + 32), y, oClawOrb)
claw2.duration = 4
claw3 = instance_create((x + 64), y, oClawOrb)
claw3.duration = 120
if global.event[54]
    event_user(0)
