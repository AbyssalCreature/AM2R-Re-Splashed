var size, type, alignment, bufferSize, result;
if (global.maxsmissilesPrev != global.maxsmissiles)
{
    buffer_delete(buffer)
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = buffer_create(size, type, alignment)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 12)
    buffer_write(buffer, buffer_u8, global.maxsmissiles)
    buffer_write(buffer, buffer_u8, global.clientID)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 12)
    buffer_write(buffer, buffer_u8, global.maxsmissiles)
    buffer_write(buffer, buffer_u8, global.clientID)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
    maxsmissilesChanged = 1
}
if (!maxsmissilesChanged)
    alarm[9] = 10
if maxsmissilesChanged
{
    maxsmissilesChanged = 0
    alarm[9] = 75
}
