var yoff, sep;
yoff = 48
sep = 8
draw_set_alpha(1)
draw_set_font(global.fontMenuSmall)
draw_set_color(c_white)
draw_text_shadow(view_xview[0], (view_yview[0] + yoff), (((((" Current Song: " + string(currentbgm)) + " - Playing: ") + string(audio_is_playing(currentbgm))) + " - A0: ") + string(alarm[0])))
draw_text_shadow(view_xview[0], ((view_yview[0] + yoff) + (sep * 1)), (" Boss: " + string(bossbgm)))
draw_text_shadow(view_xview[0], ((view_yview[0] + yoff) + (sep * 2)), (" Title: 254 - Playing: " + string(audio_is_playing(musTitle))))
draw_text_shadow(view_xview[0], ((view_yview[0] + yoff) + (sep * 3)), (" Fanfare: 256 - Playing: " + string(audio_is_playing(musFanfare))))
draw_text_shadow(view_xview[0], ((view_yview[0] + yoff) + (sep * 4)), (((" Cave: 257 - Playing: " + string(audio_is_playing(musMainCave))) + " - Vol: ") + string(audio_sound_get_gain(musMainCave))))
draw_text_shadow(view_xview[0], ((view_yview[0] + yoff) + (sep * 5)), (" MetAppear: 258 - Playing: " + string(audio_is_playing(musMonsterAppear))))
draw_text_shadow(view_xview[0], ((view_yview[0] + yoff) + (sep * 6)), (" Alpha: 259 - Playing: " + string(audio_is_playing(musAlphaFight))))
draw_text_shadow(view_xview[0], ((view_yview[0] + yoff) + (sep * 7)), (" Amb: 260 - Playing: " + string(audio_is_playing(musCaveAmbience))))
draw_text_shadow(view_xview[0], ((view_yview[0] + yoff) + (sep * 8)), (" Area1A: 261 - Playing: " + string(audio_is_playing(musArea1A))))
draw_text_shadow(view_xview[0], ((view_yview[0] + yoff) + (sep * 9)), (" Area1B: 262 - Playing: " + string(audio_is_playing(musArea1B))))
