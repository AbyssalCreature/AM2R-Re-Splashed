var v, f, size, type, alignment, bufferSize, result;
v = 0
for (f = 0; f < array_length_1d(global.item); f++)
{
    if (global.itemPrev[f] != global.item[f])
    {
        global.itemChanges[v, 0] = global.item[f]
        global.itemChanges[v, 1] = f
        ds_list_set(global.onlineItem, 0, global.itemChanges)
        itemChanged = 1
        v++
    }
}
if itemChanged
{
    buffer_delete(buffer)
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = buffer_create(size, type, alignment)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 6)
    buffer_write(buffer, buffer_string, strict_compress(ds_list_write(global.onlineItem)))
    buffer_write(buffer, buffer_u8, global.clientID)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 6)
    buffer_write(buffer, buffer_string, strict_compress(ds_list_write(global.onlineItem)))
    buffer_write(buffer, buffer_u8, global.clientID)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
}
if (!itemChanged)
    alarm[3] = 10
if itemChanged
{
    itemChanged = 0
    alarm[3] = 75
}
