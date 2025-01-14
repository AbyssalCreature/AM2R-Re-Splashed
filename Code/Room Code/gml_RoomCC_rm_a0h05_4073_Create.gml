if global.saxmode
    global.event[0] = 1
if (global.event[0] == 0)
{
    instance_destroy()
    exit
}
init_monster_trigger(0, 1)
