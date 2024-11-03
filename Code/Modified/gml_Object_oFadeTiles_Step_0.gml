if (oCharacter.x >= x && oCharacter.x <= (x + areax) && oCharacter.y > y && oCharacter.y <= (y + areay))
{
    if (falpha > targetalpha)
    {
        falpha = max((falpha - 0.1), targetalpha)
        event_user(0)
    }
}
else if (falpha < 1)
{
    falpha = min((falpha + 0.1), 1)
    event_user(0)
}
