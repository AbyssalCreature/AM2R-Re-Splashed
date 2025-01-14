var size, type, alignment, bufferSize, result;
if ((!global.saxmode) || global.spectator)
    exit
size = 1024
type = buffer_grow
alignment = 1
buffer10 = buffer_create(size, type, alignment)
buffer_seek(buffer10, buffer_seek_start, 0)
buffer_write(buffer10, buffer_u8, 35)
buffer_write(buffer10, buffer_s16, global.mapposx)
buffer_write(buffer10, buffer_s16, global.mapposy)
bufferSize = buffer_tell(buffer10)
buffer_seek(buffer10, buffer_seek_start, 0)
buffer_write(buffer10, buffer_s32, bufferSize)
buffer_write(buffer10, buffer_u8, 35)
buffer_write(buffer10, buffer_s16, global.mapposx)
buffer_write(buffer10, buffer_s16, global.mapposy)
result = network_send_packet(socket, buffer10, buffer_tell(buffer10))
buffer_delete(buffer10)
