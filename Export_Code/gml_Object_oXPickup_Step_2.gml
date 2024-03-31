if (state == 6)
{
    if (floor(statetime) == 0)
    {
        image_xscale = 1
        image_xscale = 1
        if (xvariant == 1)
        {
            image_xscale = 0.8
            image_xscale = 0.8
        }
    }
    x = (oCharacter.x + relativeX)
    y = ((oCharacter.y - (oCharacter.sprite_height / 2)) + relativeY)
    relativeX = lerp(relativeX, 0, 0.1)
    relativeY = lerp(relativeY, 0, 0.1)
    if (image_xscale > 0)
    {
        image_xscale -= 0.0225
        image_yscale -= 0.0225
    }
    if (image_xscale <= 0)
        instance_destroy()
}
if (x < ((view_xview[0] - 16) - (oControl.widescreen_space / 2)) || x > (((view_xview[0] + view_wview[0]) + 16) + (oControl.widescreen_space / 2)) || y < (view_yview[0] - 16) || y > ((view_yview[0] + view_hview[0]) + 16))
    inview = 0
