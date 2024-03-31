var size, type, alignment, bufferSize, result;
image_speed = 0.25
alarm[0] = 60
alarm[1] = 30
sfx_play(sndPBombSet)
special = 0
if instance_exists(oClient)
{
    if (ds_list_size(oClient.roomListData) > 0)
    {
        size = 1024
        type = buffer_grow
        alignment = 1
        pbombBuffer = buffer_create(size, type, alignment)
        buffer_seek(pbombBuffer, buffer_seek_start, 0)
        buffer_write(pbombBuffer, buffer_u8, 24)
        buffer_write(pbombBuffer, buffer_u8, global.clientID)
        buffer_write(pbombBuffer, buffer_s16, x)
        buffer_write(pbombBuffer, buffer_s16, y)
        buffer_write(pbombBuffer, buffer_u8, global.sax)
        bufferSize = buffer_tell(pbombBuffer)
        buffer_seek(pbombBuffer, buffer_seek_start, 0)
        buffer_write(pbombBuffer, buffer_s32, bufferSize)
        buffer_write(pbombBuffer, buffer_u8, 24)
        buffer_write(pbombBuffer, buffer_u8, global.clientID)
        buffer_write(pbombBuffer, buffer_s16, x)
        buffer_write(pbombBuffer, buffer_s16, y)
        buffer_write(pbombBuffer, buffer_u8, global.sax)
        result = network_send_packet(oClient.socket, pbombBuffer, buffer_tell(pbombBuffer))
        buffer_delete(pbombBuffer)
    }
}
