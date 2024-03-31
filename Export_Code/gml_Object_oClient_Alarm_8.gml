var size, type, alignment, bufferSize, result;
if (global.maxmissilesPrev != global.maxmissiles)
{
    buffer_delete(buffer)
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = buffer_create(size, type, alignment)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 11)
    buffer_write(buffer, buffer_u16, global.maxmissiles)
    buffer_write(buffer, buffer_u8, global.clientID)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 11)
    buffer_write(buffer, buffer_u16, global.maxmissiles)
    buffer_write(buffer, buffer_u8, global.clientID)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
    maxmissilesChanged = 1
}
if (!maxmissilesChanged)
    alarm[8] = 10
if maxmissilesChanged
{
    maxmissilesChanged = 0
    alarm[8] = 75
}
