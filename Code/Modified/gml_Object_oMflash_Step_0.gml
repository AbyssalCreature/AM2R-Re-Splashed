if instance_exists(oCharacter)
{
    if (oCharacter.x != oCharacter.xprevious && image_index > 0)
        x += (oCharacter.x - oCharacter.xprevious)
    if (oCharacter.y != oCharacter.yprevious && image_index > 0)
        y += (oCharacter.y - oCharacter.yprevious)
}
