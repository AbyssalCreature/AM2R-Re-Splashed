draw_character_from_surface(x, y, 16777215, 1);

if (invincible > 0 || burning)
{
    draw_character_from_surface(x, y, 16711680, fxtimer * 0.2);
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, 16777215, 0.8 - (fxtimer * 0.2));
    draw_set_blend_mode(bm_normal);
}

if (plantdrain > 0)
{
    draw_character_from_surface(x, y, 32768, fxtimer * 0.2);
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, 16777215, 0.8 - (fxtimer * 0.2));
    draw_set_blend_mode(bm_normal);
}

if (monster_drain > 0 || queen_drain > 0 || pbomb_drain > 0)
{
    draw_character_from_surface(x, y, 255, fxtimer * 0.2);
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, 16777215, 0.8 - (fxtimer * 0.2));
    draw_set_blend_mode(bm_normal);
}

if (chargebeam >= 1)
{
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, 16777215, 0.1 + (fxtimer * 0.2));
    draw_set_blend_mode(bm_normal);
}

if (speedboost == 1 || charge > 0 || state == SJSTART || state == SUPERJUMP || (state == SJEND && statetime < 10))
{
    if (fxtimer == 0 || fxtimer == 1)
        draw_character_from_surface(x, y, 32768, 1.1 + (fxtimer * 0.2));
    
    if (fxtimer == 2 || fxtimer == 3)
    {
        draw_set_blend_mode(bm_add);
        draw_character_from_surface(x, y, 65535, 1);
        draw_character_from_surface(x, y, 16777215, 1);
        draw_set_blend_mode(bm_normal);
    }
    
    if (fxtimer == 4 || fxtimer == 5)
    {
        draw_set_blend_mode(bm_add);
        draw_character_from_surface(x, y, 255, 1);
        draw_set_blend_mode(bm_normal);
    }
}

if (state == SPIDERBALL || ((state == AIRBALL && sball == 1) && !oControl.msr_fusionsuit))
{
    draw_set_blend_mode(bm_add);
    
    if (oControl.mod_fusion == 1)
    {
        var omegaSpider = 0;
        
        if (global.ibeam && oControl.omegaEnabled)
        {
            omegaSpider = 1;
            draw_sprite_ext(sSpiderballFXOmega_fusion, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
        }
        
        if (!omegaSpider)
        {
            switch (global.currentsuit)
            {
                case 0:
                    draw_sprite_ext(sSpiderballFX_fusion, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                    break;
                
                case 1:
                    draw_sprite_ext(sSpiderballFXVaria_fusion, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                    break;
                
                case 2:
                    draw_sprite_ext(sSpiderballFXGravity_fusion, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                    break;
            }
        }
    }
    else
    {
        switch (global.currentsuit)
        {
            case 0:
                draw_sprite_ext(sSpiderballFX, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                break;
            
            case 1:
                draw_sprite_ext(sSpiderballFXVaria, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                break;
            
            case 2:
                draw_sprite_ext(sSpiderballFXGravity, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                break;
        }
    }
    
    draw_set_blend_mode(bm_normal);
}
else if (state == SPIDERBALL || ((state == AIRBALL && sball == 1) && oControl.msr_fusionsuit))
{
    draw_set_blend_mode(bm_add);
    
    if (oControl.mod_fusion == 1)
    {
        var omegaSpider = 0;
        
        if (global.ibeam && oControl.omegaEnabled)
        {
            omegaSpider = 1;
            draw_sprite_ext(sSpiderballFXOmega_fusion2D, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
        }
        
        if (!omegaSpider)
        {
            switch (global.currentsuit)
            {
                case 0:
                    draw_sprite_ext(sSpiderballFX_fusion2D, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                    break;
                
                case 1:
                    draw_sprite_ext(sSpiderballFXVaria_fusion2D, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                    break;
                
                case 2:
                    draw_sprite_ext(sSpiderballFXGravity_fusion2D, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                    break;
            }
        }
    }
    else
    {
        switch (global.currentsuit)
        {
            case 0:
                draw_sprite_ext(sSpiderballFX2D, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                break;
            
            case 1:
                draw_sprite_ext(sSpiderballFXVaria2D, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                break;
            
            case 2:
                draw_sprite_ext(sSpiderballFXGravity2D, -1, x, y, 1, 1, 0, -1, 0.2 + (fxtimer * 0.1));
                break;
        }
    }
    
    draw_set_blend_mode(bm_normal);
}

if (xGlow == 1)
{
    draw_character_from_surface(x, y, 65535, fxtimer * 0.3);
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, 4235519, 0.8 - (fxtimer * 0.2));
    draw_set_blend_mode(bm_normal);
}
else if (xGlow == 2)
{
    draw_character_from_surface(x, y, 65280, fxtimer * 0.2);
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, 32768, 0.8 - (fxtimer * 0.2));
    draw_set_blend_mode(bm_normal);
}
else if (xGlow == 3)
{
    draw_character_from_surface(x, y, 255, fxtimer * 0.2);
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, 128, 0.8 - (fxtimer * 0.2));
    draw_set_blend_mode(bm_normal);
}
else if (xGlow == 4)
{
    draw_character_from_surface(x, y, 4235519, fxtimer * 0.2);
    draw_set_blend_mode(bm_add);
    draw_character_from_surface(x, y, 255, 0.8 - (fxtimer * 0.2));
    draw_set_blend_mode(bm_normal);
}
