if (other.speedboost > 0)
    event_user(1)
dodamage = 1
if (other.dash >= 29 || other.state == 30 || other.state == 31 || other.state == 29 || other.speedboost > 0 || (other.state == 15 && other.vjump == 0 && global.screwattack == 1))
    dodamage = 0
if (other.chargebeam >= 1 && other.state == 15 && other.vjump == 0 && global.screwattack == 0)
{
    event_user(0)
    if (myhealth <= 0)
        event_user(1)
    other.chargebeam = 0
    other.nofire = 20
    dodamage = 0
    repeat (8)
    {
        spark = instance_create(x, y, oFXTrail)
        spark.additive = 1
        spark.fadespeed = 0.05
        spark.direction = (((point_direction(x, (y - 8), oCharacter.x, (oCharacter.y - 12)) - 4) + random(8)) + 90)
        spark.speed = (1 + random(4))
        if (random(2) < 1)
            spark.direction += 180
        spark.sprite_index = sChargeBeamSpark2
        if global.wbeam
            spark.sprite_index = sChargeWBeamSpark2
        if global.pbeam
            spark.sprite_index = sChargePBeamSpark2
        if global.ibeam
            spark.sprite_index = sChargeIBeamSpark2
    }
}
if (dodamage == 1)
    damage_player(damage, hpush, vpush, 0, 0)
