var combo, speedDamage;
if global.spectator
    exit
otherOBJ = other.object_index
global.multiDamageCollision = 1
combo = 0
speedDamage = 45
if (global.playerFreeze > 0)
    speedDamage = (speedDamage / 2)
damage_player(speedDamage, ((20 * other.mirror) * -1), -3, 0, combo)
