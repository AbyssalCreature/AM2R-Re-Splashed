if global.saxmode
    global.event[205] = 1
if (global.metdead[myid] > 0)
{
    state = 3
    exit
}
if (global.event[205] > 0)
    event_user(1)
