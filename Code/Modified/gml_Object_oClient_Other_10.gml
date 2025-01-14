var size, type, alignment, bufferSize, result;
size = 1024
type = buffer_grow
alignment = 1
buffer2 = buffer_create(size, type, alignment)
buffer_seek(buffer2, buffer_seek_start, 0)
buffer_write(buffer2, buffer_u8, 29)
buffer_write(buffer2, buffer_u8, syncedDifficulty)
bufferSize = buffer_tell(buffer2)
buffer_seek(buffer2, buffer_seek_start, 0)
buffer_write(buffer2, buffer_s32, bufferSize)
buffer_write(buffer2, buffer_u8, 29)
buffer_write(buffer2, buffer_u8, syncedDifficulty)
result = network_send_packet(socket, buffer2, buffer_tell(buffer2))
buffer_delete(buffer2)
