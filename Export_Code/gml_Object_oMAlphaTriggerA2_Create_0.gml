facing = 1
myid = 5
if (global.metdead[5] == 1 || global.event[108] == 1)
{
    tile_layer_delete(-105)
    instance_destroy()
    exit
}
image_xscale = facing
active = 0
