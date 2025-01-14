var i, size, type, alignment, bufferSize, result, itemCount, h, val;
update_variables("onlinevars")
for (i = 0; i < ds_grid_height(global.onlineList); i++)
{
    if (ds_grid_get(global.onlineList, 0, i) != ds_grid_get(global.onlineList, 1, i) && (i != 0 || i != 15 || i != 16 || i != 17))
    {
        ds_grid_set(global.onlineSend, 0, i, ds_grid_get(global.onlineList, 0, i))
        ds_grid_set(global.onlineSend, 1, i, ds_grid_get(global.onlineList, 1, i))
        ds_grid_set(global.onlineSend, 2, i, ds_grid_get(global.onlineList, 2, i))
        update_variables("disablesame")
        update_variables("replaceglobalvars")
        update_variables("updateprev")
        canSend = 1
        alarm[0] = 600
    }
}
if canSend
{
    buffer_delete(buffer)
    size = 1024
    type = buffer_grow
    alignment = 1
    buffer = buffer_create(size, type, alignment)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_u8, 0)
    buffer_write(buffer, buffer_string, strict_compress(ds_grid_write(global.onlineSend)))
    buffer_write(buffer, buffer_u8, global.clientID)
    buffer_write(buffer, buffer_u32, global.packetID)
    bufferSize = buffer_tell(buffer)
    buffer_seek(buffer, buffer_seek_start, 0)
    buffer_write(buffer, buffer_s32, bufferSize)
    buffer_write(buffer, buffer_u8, 0)
    buffer_write(buffer, buffer_string, strict_compress(ds_grid_write(global.onlineSend)))
    buffer_write(buffer, buffer_u8, global.clientID)
    buffer_write(buffer, buffer_u32, global.packetID)
    result = network_send_packet(socket, buffer, buffer_tell(buffer))
    show_debug_message(("packetID = " + string(global.packetID)))
    global.packetID++
    ds_grid_clear(global.onlineSend, -1)
}
if (!canSend)
    alarm[0] = 10
if canSend
{
    canSend = 0
    alarm[0] = 75
}
if instance_exists(oCharacter)
{
    check_areaclear()
    if (global.playerhealth <= 0)
    {
        if (oCharacter.state != oCharacter.DEFEATED && oCharacter.canbehit)
        {
            oCharacter.alarm[0] = 6
            oCharacter.state = oCharacter.DEFEATED
            mus_current_fadeout()
            sfx_stop_all()
        }
    }
}
if (instance_exists(oQueen) && instance_exists(oQueenHead) && (!is_undefined(oQueenHead.myhealth)) && (!is_undefined(oQueen.phase)))
{
    if (global.queenhealthPrev != oQueenHead.myhealth || oQueen.phase != phase)
    {
        show_debug_message(("queen health sent " + string(oQueenHead.myhealth)))
        size = 1024
        type = buffer_grow
        alignment = 1
        buffer = buffer_create(size, type, alignment)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_u8, 2)
        buffer_write(buffer, buffer_s32, oQueenHead.myhealth)
        buffer_write(buffer, buffer_u8, global.clientID)
        buffer_write(buffer, buffer_s8, oQueen.phase)
        buffer_write(buffer, buffer_s8, oQueen.state)
        bufferSize = buffer_tell(buffer)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_s32, bufferSize)
        buffer_write(buffer, buffer_u8, 2)
        buffer_write(buffer, buffer_s32, oQueenHead.myhealth)
        buffer_write(buffer, buffer_u8, global.clientID)
        buffer_write(buffer, buffer_s8, oQueen.phase)
        buffer_write(buffer, buffer_s8, oQueen.state)
        result = network_send_packet(socket, buffer, buffer_tell(buffer))
    }
}
itemCount = 0
for (h = 0; h < array_length_1d(global.item); h++)
{
    val = global.item[h]
    if (val == 1 && h != 1)
        itemCount++
}
if (itemCount != global.itemstaken)
    global.itemstaken = itemCount
