var mosaicEffect, size, type, alignment, bufferSize, result;
mosaicEffect = 0
if sameRoom
{
    if instance_exists(oCharacter)
    {
        if (oCharacter.x != global.prevX || oCharacter.y != global.prevY || global.roomPrev != room || global.prevSprite != oCharacter.sprite_index || global.prevIndex != oCharacter.image_index || global.prevInvincible != oCharacter.invincible || global.mosaic)
        {
            if (global.prevX != oCharacter.x)
                global.prevX = oCharacter.x
            if (global.prevY != oCharacter.y)
                global.prevY = oCharacter.y
            if (global.prevSprite != oCharacter.sprite_index)
                global.prevSprite = oCharacter.sprite_index
            if (global.prevIndex != oCharacter.image_index)
                global.prevIndex = oCharacter.image_index
            if (global.prevInvincible != oCharacter.invincible)
                global.prevInvincible = oCharacter.invincible
            if (global.mosaic || global.reform)
                mosaicEffect = 1
            else
                mosaicEffect = 0
            buffer_delete(buffer)
            size = 1024
            type = buffer_grow
            alignment = 1
            buffer = buffer_create(size, type, alignment)
            buffer_seek(buffer, buffer_seek_start, 0)
            buffer_write(buffer, buffer_u8, 100)
            buffer_write(buffer, buffer_u8, global.clientID)
            buffer_write(buffer, buffer_s16, oCharacter.x)
            buffer_write(buffer, buffer_s16, oCharacter.y)
            buffer_write(buffer, buffer_s16, oCharacter.sprite_index)
            buffer_write(buffer, buffer_s16, oCharacter.image_index)
            buffer_write(buffer, buffer_s16, oCharacter.aspr1)
            buffer_write(buffer, buffer_s16, oCharacter.asprx)
            buffer_write(buffer, buffer_s16, oCharacter.aspry)
            buffer_write(buffer, buffer_s16, oCharacter.aspr2)
            buffer_write(buffer, buffer_s16, oCharacter.aspr2x)
            buffer_write(buffer, buffer_s16, oCharacter.aspr2y)
            buffer_write(buffer, buffer_s16, oCharacter.aspr2a)
            buffer_write(buffer, buffer_s16, oCharacter.mirror)
            buffer_write(buffer, buffer_s16, oCharacter.armmsl)
            buffer_write(buffer, buffer_s16, room)
            buffer_write(buffer, buffer_string, name)
            buffer_write(buffer, buffer_s16, oCharacter.image_blend)
            buffer_write(buffer, buffer_s8, oCharacter.fxtimer)
            buffer_write(buffer, buffer_s16, global.roomPrev)
            buffer_write(buffer, buffer_s8, oCharacter.state)
            buffer_write(buffer, buffer_s8, global.sax)
            buffer_write(buffer, buffer_s8, oCharacter.speedboost)
            buffer_write(buffer, buffer_s8, oCharacter.sjball)
            buffer_write(buffer, buffer_s8, oCharacter.sjdir)
            buffer_write(buffer, buffer_u8, oCharacter.charge)
            buffer_write(buffer, buffer_s16, global.playerhealth)
            buffer_write(buffer, buffer_u8, global.spectator)
            buffer_write(buffer, buffer_u8, oCharacter.invincible)
            buffer_write(buffer, buffer_u8, global.mosaic)
            buffer_write(buffer, buffer_u8, global.reform)
            buffer_write(buffer, buffer_u8, oCharacter.visible)
            buffer_write(buffer, buffer_u8, oCharacter.sball)
            bufferSize = buffer_tell(buffer)
            buffer_seek(buffer, buffer_seek_start, 0)
            buffer_write(buffer, buffer_s32, bufferSize)
            buffer_write(buffer, buffer_u8, 100)
            buffer_write(buffer, buffer_u8, global.clientID)
            buffer_write(buffer, buffer_s16, oCharacter.x)
            buffer_write(buffer, buffer_s16, oCharacter.y)
            buffer_write(buffer, buffer_s16, oCharacter.sprite_index)
            buffer_write(buffer, buffer_s16, oCharacter.image_index)
            buffer_write(buffer, buffer_s16, oCharacter.aspr1)
            buffer_write(buffer, buffer_s16, oCharacter.asprx)
            buffer_write(buffer, buffer_s16, oCharacter.aspry)
            buffer_write(buffer, buffer_s16, oCharacter.aspr2)
            buffer_write(buffer, buffer_s16, oCharacter.aspr2x)
            buffer_write(buffer, buffer_s16, oCharacter.aspr2y)
            buffer_write(buffer, buffer_s16, oCharacter.aspr2a)
            buffer_write(buffer, buffer_s16, oCharacter.mirror)
            buffer_write(buffer, buffer_s16, oCharacter.armmsl)
            buffer_write(buffer, buffer_s16, room)
            buffer_write(buffer, buffer_string, name)
            buffer_write(buffer, buffer_s16, oCharacter.image_blend)
            buffer_write(buffer, buffer_s8, oCharacter.fxtimer)
            buffer_write(buffer, buffer_s16, global.roomPrev)
            buffer_write(buffer, buffer_s8, oCharacter.state)
            buffer_write(buffer, buffer_s8, global.sax)
            buffer_write(buffer, buffer_s8, oCharacter.speedboost)
            buffer_write(buffer, buffer_s8, oCharacter.sjball)
            buffer_write(buffer, buffer_s8, oCharacter.sjdir)
            buffer_write(buffer, buffer_u8, oCharacter.charge)
            buffer_write(buffer, buffer_s16, global.playerhealth)
            buffer_write(buffer, buffer_u8, global.spectator)
            buffer_write(buffer, buffer_u8, oCharacter.invincible)
            buffer_write(buffer, buffer_u8, global.mosaic)
            buffer_write(buffer, buffer_u8, global.reform)
            buffer_write(buffer, buffer_u8, oCharacter.visible)
            buffer_write(buffer, buffer_u8, oCharacter.sball)
            result = network_send_packet(socket, buffer, buffer_tell(buffer))
            if (global.roomPrev != room)
                global.roomPrev = room
        }
    }
}
if mosaicEffect
    alarm[10] = 1
else
    alarm[10] = 2
