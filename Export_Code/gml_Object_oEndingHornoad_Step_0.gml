if (sprite_index == sHornoadJump && image_index >= 5 && place_meeting(x, (y + 1), oEndingSolid))
{
    PlaySoundMono(sndHornoadLand)
    sprite_index = sHornoadIdle
    image_index = 0
    image_speed = 0.1
}
if (turnLeft == 1)
{
    image_speed = 0.12
    sprite_index = sHornoadTurnNew
    image_index = 0
    turnLeft = 0
}
if (sprite_index == sHornoadTurnNew && image_index >= 2 && turnState == 0)
{
    sprite_index = sHornoadIdle
    image_index = 0
    image_xscale = -1
    image_speed = 0.1
}
if (turnRight == 1)
{
    image_speed = 0.12
    sprite_index = sHornoadTurnNew
    image_index = 0
    image_xscale = -1
    turnRight = 0
    turnState = 1
}
if (sprite_index == sHornoadTurnNew && image_index >= 2 && turnState == 1)
{
    sprite_index = sHornoadIdle
    image_index = 0
    image_xscale = 1
    image_speed = 0.1
    turnState = 0
}
if (jumpTime >= 0.999999999)
{
    sprite_index = sHornoadJump
    image_index = 0
    image_speed = 0.2
    jumpTime = 0
}
if (hornoadBlink == 1 && sprite_index == sHornoadIdle && image_index >= 5)
{
    sprite_index = sHornoadShake
    image_index = 0
    image_speed = 0.2
    hornoadBlink = 0
}
if (sprite_index == sHornoadDeath && image_index > 3)
    image_speed = 0.5
if (sprite_index == sHornoadDeath && image_index > 19)
    image_speed = 0
