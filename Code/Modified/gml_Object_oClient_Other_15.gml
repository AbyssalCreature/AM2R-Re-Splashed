var size, type, alignment, bufferSize, result;
size = 1024
type = buffer_grow
alignment = 1
buffer7 = buffer_create(size, type, alignment)
buffer_seek(buffer7, buffer_seek_start, 0)
buffer_write(buffer7, buffer_u8, 32)
bufferSize = buffer_tell(buffer7)
buffer_seek(buffer7, buffer_seek_start, 0)
buffer_write(buffer7, buffer_s32, bufferSize)
buffer_write(buffer7, buffer_u8, 32)
result = network_send_packet(socket, buffer7, buffer_tell(buffer7))
buffer_delete(buffer7)
