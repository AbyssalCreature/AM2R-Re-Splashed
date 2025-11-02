action_inherited();
enemy_active_check(20);
enemy_target_check(90, 1);

if (oControl.mod_fusion)
{
    sprite_index = sWallfire_Fusion;
    frozenspr = 2064;
    empspr = 2063;
}
else
{
    sprite_index = sWallfire;
    frozenspr = 325;
    empspr = 324;
}

if (active == 1 && stun == 0 && frozen == 0)
{
    if (state == 1)
    {
        if (image_index > 0)
            image_index -= 0.5;
    }
    
    if (state == 2 && image_index < 3)
        image_index += 0.5;
}

if (state == 100)
{
    spark = instance_create(x, y, oFXAnimSpark);
    spark.sprite_index = sWallfireDestr;
    
    if (oControl.mod_fusion)
        spark.sprite_index = sWallfireDestr_Fusion;
    
    spark.image_speed = 0;
    spark.depth = 1;
    spark.image_xscale = facing;
    
    repeat (20)
        instance_create(x, y, oDebris);
    
    enemy_death();
}
