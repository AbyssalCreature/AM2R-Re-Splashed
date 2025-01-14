var size, type, alignment, bufferSize, result;
size = 1024
type = buffer_grow
alignment = 1
buffer11 = buffer_create(size, type, alignment)
buffer_seek(buffer11, buffer_seek_start, 0)
buffer_write(buffer11, buffer_u8, 36)
buffer_write(buffer11, buffer_s8, oCharacter.mirror)
buffer_write(buffer11, buffer_s16, room)
buffer_write(buffer11, buffer_s16, global.currX)
buffer_write(buffer11, buffer_s16, global.currY)
buffer_write(buffer11, buffer_s8, global.sax)
bufferSize = buffer_tell(buffer11)
buffer_seek(buffer11, buffer_seek_start, 0)
buffer_write(buffer11, buffer_s32, bufferSize)
buffer_write(buffer11, buffer_u8, 36)
buffer_write(buffer11, buffer_s8, oCharacter.mirror)
buffer_write(buffer11, buffer_s16, room)
buffer_write(buffer11, buffer_s16, global.currX)
buffer_write(buffer11, buffer_s16, global.currY)
buffer_write(buffer11, buffer_s8, global.sax)
result = network_send_packet(socket, buffer11, buffer_tell(buffer11))
buffer_delete(buffer11)
