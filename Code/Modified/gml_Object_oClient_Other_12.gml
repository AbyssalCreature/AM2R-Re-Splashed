var size, type, alignment, bufferSize, result;
if global.spectator
    exit
size = 1024
type = buffer_grow
alignment = 1
buffer4 = buffer_create(size, type, alignment)
buffer_seek(buffer4, buffer_seek_start, 0)
buffer_write(buffer4, buffer_u8, 105)
buffer_write(buffer4, buffer_u8, global.otherID)
bufferSize = buffer_tell(buffer4)
buffer_seek(buffer4, buffer_seek_start, 0)
buffer_write(buffer4, buffer_s32, bufferSize)
buffer_write(buffer4, buffer_u8, 105)
buffer_write(buffer4, buffer_u8, global.otherID)
result = network_send_packet(socket, buffer4, buffer_tell(buffer4))
buffer_delete(buffer4)
