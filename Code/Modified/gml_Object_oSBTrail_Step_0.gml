sx[10] = sx[9]
sx[9] = sx[8]
sx[8] = sx[7]
sx[7] = sx[6]
sx[6] = sx[5]
sx[5] = sx[4]
sx[4] = sx[3]
sx[3] = sx[2]
sx[2] = sx[1]
sx[1] = sx[0]
sx[0] = x
sy[10] = sy[9]
sy[9] = sy[8]
sy[8] = sy[7]
sy[7] = sy[6]
sy[6] = sy[5]
sy[5] = sy[4]
sy[4] = sy[3]
sy[3] = sy[2]
sy[2] = sy[1]
sy[1] = sy[0]
sy[0] = y
if (fx == 0)
{
    alpha1 = 0.8
    alpha2 = 0.6
    alpha3 = 0.4
    alpha4 = 0.2
}
if (fx == 1)
{
    alpha1 = 0.2
    alpha2 = 0.8
    alpha3 = 0.6
    alpha4 = 0.4
}
if (fx == 2)
{
    alpha1 = 0.4
    alpha2 = 0.2
    alpha3 = 0.8
    alpha4 = 0.6
}
if (fx == 3)
{
    alpha1 = 0.6
    alpha2 = 0.4
    alpha3 = 0.2
    alpha4 = 0.8
}
fx += 1
if (fx > 3)
    fx = 0
x = oCharacter.x
y = oCharacter.y
if (global.currentsuit == 2)
    image_blend = make_color_rgb(165, 66, 181)
if (oCharacter.dash == 0 && oCharacter.charge == 0 && ((oCharacter.state != 28 && oCharacter.state != 29 && oCharacter.state != 30) || (oCharacter.state == 31 && oCharacter.statetime >= 10)))
    instance_destroy()
