var combo;
if global.spectator
    exit
otherOBJ = other.object_index
global.multiDamageCollision = 1
combo = 0
damageDir = -1
if (other.direction > 90 && other.direction < 270)
    damageDir = 1
global.ignoreKnockback = 1
damage_player(other.damage, (5 * damageDir), -3, 0, combo)
