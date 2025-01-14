if global.saxmode
    global.event[205] = 1
if (global.metdead[myid] > 0 || global.event[205] > 0)
{
    instance_destroy()
    exit
}
