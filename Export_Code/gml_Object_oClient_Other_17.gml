var size, type, alignment, bufferSize, result;
size = 1024
type = buffer_grow
alignment = 1
buffer9 = buffer_create(size, type, alignment)
buffer_seek(buffer9, buffer_seek_start, 0)
buffer_write(buffer9, buffer_u8, 34)
buffer_write(buffer9, buffer_u8, global.saxmode)
bufferSize = buffer_tell(buffer9)
buffer_seek(buffer9, buffer_seek_start, 0)
buffer_write(buffer9, buffer_s32, bufferSize)
buffer_write(buffer9, buffer_u8, 34)
buffer_write(buffer9, buffer_u8, global.saxmode)
result = network_send_packet(socket, buffer9, buffer_tell(buffer9))
buffer_delete(buffer9)
