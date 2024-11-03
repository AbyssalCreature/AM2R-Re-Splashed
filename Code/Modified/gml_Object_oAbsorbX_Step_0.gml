if (color == 0)
    oCharacter.xGlow = 1
if (color == 1)
{
    sprite_index = sAbsorbXHBig
    oCharacter.xGlow = 1
}
else if (color == 2)
{
    sprite_index = sAbsorbXM
    oCharacter.xGlow = 2
}
else if (color == 3)
{
    sprite_index = sAbsorbXPB
    oCharacter.xGlow = 3
}
else if (color == 4)
{
    sprite_index = sAbsorbXSM
    oCharacter.xGlow = 4
}
if (core == 1)
{
    sprite_index = sAbsorbCoreX
    oCharacter.xGlow += 1
    if (oCharacter.xGlow > 4)
        oCharacter.xGlow = 1
}
