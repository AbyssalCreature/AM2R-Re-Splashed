var size, type, alignment, bufferSize, result;
image_speed = 0.25
alarm[0] = 32
alarm[1] = 8
alarm[2] = 16
if instance_exists(oClient)
{
    if (ds_list_size(oClient.roomListData) > 0)
    {
        size = 1024
        type = buffer_grow
        alignment = 1
        bombBuffer = buffer_create(size, type, alignment)
        buffer_seek(bombBuffer, buffer_seek_start, 0)
        buffer_write(bombBuffer, buffer_u8, 22)
        buffer_write(bombBuffer, buffer_u8, global.clientID)
        buffer_write(bombBuffer, buffer_s16, x)
        buffer_write(bombBuffer, buffer_s16, y)
        buffer_write(bombBuffer, buffer_u8, global.sax)
        bufferSize = buffer_tell(bombBuffer)
        buffer_seek(bombBuffer, buffer_seek_start, 0)
        buffer_write(bombBuffer, buffer_s32, bufferSize)
        buffer_write(bombBuffer, buffer_u8, 22)
        buffer_write(bombBuffer, buffer_u8, global.clientID)
        buffer_write(bombBuffer, buffer_s16, x)
        buffer_write(bombBuffer, buffer_s16, y)
        buffer_write(bombBuffer, buffer_u8, global.sax)
        result = network_send_packet(oClient.socket, bombBuffer, buffer_tell(bombBuffer))
        buffer_delete(bombBuffer)
    }
}
