action_inherited()
myhealth = 20
freezehp = 220
damage = 75
hitsound = 61
deathsound = 60
frozenspr = sBlobThrowerWaterFrozen
canfreeze = 1
hitmissileexpl = 0
target = 0
canattack = 1
state = 0
image_speed = 0
sprite_index = sBlobThrowerWaterClosed
if oControl.XVariantsEnabled
{
    frozenspr = sBlobThrowerWaterFrozen_Fusion
    sprite_index = sBlobThrowerWaterClosed_Fusion
}
freezefall = 0
canhit = 1
statetime = 100
platyoffset = 0
blobsolid = instance_create((x - 4), (y - 36), oBlobSolid)
blobsolid.image_yscale = 2.75
blobsolid.image_xscale = 0.5
