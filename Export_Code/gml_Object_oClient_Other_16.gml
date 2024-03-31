var size, type, alignment, bufferSize, result;
size = 1024
type = buffer_grow
alignment = 1
buffer8 = buffer_create(size, type, alignment)
buffer_seek(buffer8, buffer_seek_start, 0)
buffer_write(buffer8, buffer_u8, 33)
buffer_write(buffer8, buffer_u8, global.lobbyLocked)
bufferSize = buffer_tell(buffer8)
buffer_seek(buffer8, buffer_seek_start, 0)
buffer_write(buffer8, buffer_s32, bufferSize)
buffer_write(buffer8, buffer_u8, 33)
buffer_write(buffer8, buffer_u8, global.lobbyLocked)
result = network_send_packet(socket, buffer8, buffer_tell(buffer8))
buffer_delete(buffer8)
