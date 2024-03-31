if global.saxmode
    global.event[0] = 1
if (global.metdead[0] || global.event[0])
{
    instance_destroy()
    exit
}
