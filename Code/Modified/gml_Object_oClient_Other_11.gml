var size, type, alignment, bufferSize, result;
size = 1024
type = buffer_grow
alignment = 1
buffer3 = buffer_create(size, type, alignment)
buffer_seek(buffer3, buffer_seek_start, 0)
buffer_write(buffer3, buffer_u8, 30)
buffer_write(buffer3, buffer_u8, elm)
bufferSize = buffer_tell(buffer3)
buffer_seek(buffer3, buffer_seek_start, 0)
buffer_write(buffer3, buffer_s32, bufferSize)
buffer_write(buffer3, buffer_u8, 30)
buffer_write(buffer3, buffer_u8, elm)
result = network_send_packet(socket, buffer3, buffer_tell(buffer3))
buffer_delete(buffer3)
