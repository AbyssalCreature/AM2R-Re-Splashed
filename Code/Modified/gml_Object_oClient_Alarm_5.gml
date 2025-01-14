var v, f, size, type, alignment, bufferSize, result;
v = 0
f = 0
while (f < array_length_1d(global.event))
{
    if (f > 350)
        break
    else
    {
        if (f == 102)
            global.eventPrev[f] = global.event[f]
        if (global.eventPrev[f] != global.event[f])
        {
            global.eventChanges[v, 0] = global.event[f]
            global.eventChanges[v, 1] = f
            ds_list_set(global.onlineEvent, 0, global.eventChanges)
            eventChanged = 1
            v++
        }
        f++
        continue
    }
}
if eventChanged
{
    buffer_delete(buffer)
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = buffer_create(size, type, alignment)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 8)
    buffer_write(buffer, buffer_string, strict_compress(ds_list_write(global.onlineEvent)))
    buffer_write(buffer, buffer_u8, global.clientID)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 8)
    buffer_write(buffer, buffer_string, strict_compress(ds_list_write(global.onlineEvent)))
    buffer_write(buffer, buffer_u8, global.clientID)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
}
if (!eventChanged)
    alarm[5] = 10
if eventChanged
{
    eventChanged = 0
    alarm[5] = 75
}
