if global.spectator
    instance_destroy()
if ((oCharacter.x < x || oCharacter.y < y) && oCharacter.y > (y - 64))
    event_user(0)
