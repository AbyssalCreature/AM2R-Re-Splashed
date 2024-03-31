var size, type, alignment, bufferSize, result;
if (global.itemstakenPrev != global.itemstaken)
{
    buffer_delete(buffer)
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = buffer_create(size, type, alignment)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 10)
    buffer_write(buffer, buffer_u8, global.itemstaken)
    buffer_write(buffer, buffer_u8, global.clientID)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 10)
    buffer_write(buffer, buffer_u8, global.itemstaken)
    buffer_write(buffer, buffer_u8, global.clientID)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
    itemstakenChanged = 1
}
if (!itemstakenChanged)
    alarm[7] = 10
if itemstakenChanged
{
    itemstakenChanged = 0
    alarm[7] = 75
}
