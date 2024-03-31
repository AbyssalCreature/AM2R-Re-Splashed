var size, type, alignment, bufferSize, result;
if (global.monstersleftPrev != global.monstersleft)
{
    buffer_delete(buffer)
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = buffer_create(size, type, alignment)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 4)
    buffer_write(buffer, buffer_s8, global.monstersleft)
    buffer_write(buffer, buffer_u8, global.clientID)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 4)
    buffer_write(buffer, buffer_s8, global.monstersleft)
    buffer_write(buffer, buffer_u8, global.clientID)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
    metroidCountChanged = 1
}
if (global.monstersareaPrev != global.monstersarea)
{
    buffer_delete(buffer)
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = buffer_create(size, type, alignment)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 5)
    buffer_write(buffer, buffer_s8, global.monstersarea)
    buffer_write(buffer, buffer_u8, global.clientID)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 5)
    buffer_write(buffer, buffer_s8, global.monstersarea)
    buffer_write(buffer, buffer_u8, global.clientID)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
    metroidCountChanged = 1
}
if (!metroidCountChanged)
    alarm[2] = 10
if metroidCountChanged
{
    metroidCountChanged = 0
    alarm[2] = 75
}
