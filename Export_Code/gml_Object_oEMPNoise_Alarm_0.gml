with (oCharacter)
{
    if ((turning == 0 && morphing == 0 && unmorphing == 0 && walljumping == 0 && (state == STANDING || state == RUNNING || state == DUCKING || (state == JUMPING && vjump == 1))) || (state == GRIP && ((facing == RIGHT && aimdirection != 0) || (facing == LEFT && aimdirection != 1))))
    {
        empspark = instance_create((oCharacter.x + oCharacter.aspr2x), (oCharacter.y + oCharacter.aspr2y), oFXAnimSpark)
        empspark.sprite_index = sBatterySpark
        empspark.image_speed = 1
        empspark.additive = 1
        empspark.image_xscale = choose(1, -1)
        empspark.image_yscale = choose(1, -1)
        empspark.image_angle = random(360)
        empspark.depth = -10
    }
}
alarm[0] = 5
