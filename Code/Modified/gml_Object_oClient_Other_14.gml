var size, type, alignment, bufferSize, result;
size = 1024
type = buffer_grow
alignment = 1
buffer6 = buffer_create(size, type, alignment)
buffer_seek(buffer6, buffer_seek_start, 0)
buffer_write(buffer6, buffer_u8, 31)
buffer_write(buffer6, buffer_u8, global.otherAbsorbID)
buffer_write(buffer6, buffer_s16, global.otherAbsorbRelativeX)
buffer_write(buffer6, buffer_s16, global.otherAbsorbRelativeY)
buffer_write(buffer6, buffer_u8, global.otherAbsorbSpriteHeight)
bufferSize = buffer_tell(buffer6)
buffer_seek(buffer6, buffer_seek_start, 0)
buffer_write(buffer6, buffer_s32, bufferSize)
buffer_write(buffer6, buffer_u8, 31)
buffer_write(buffer6, buffer_u8, global.otherAbsorbID)
buffer_write(buffer6, buffer_s16, global.otherAbsorbRelativeX)
buffer_write(buffer6, buffer_s16, global.otherAbsorbRelativeY)
buffer_write(buffer6, buffer_u8, global.otherAbsorbSpriteHeight)
result = network_send_packet(socket, buffer6, buffer_tell(buffer6))
buffer_delete(buffer6)
