if (state != 100)
{
    wall1.x = (edge_l - 64)
    wall2.x = (edge_r + 32)
    with (oCharacter)
    {
        if (x < (oBoss1Head.edge_l - 16))
            x = (oBoss1Head.edge_l - 16)
        if (x > (oBoss1Head.edge_r + 16))
            x = (oBoss1Head.edge_r + 16)
    }
}
