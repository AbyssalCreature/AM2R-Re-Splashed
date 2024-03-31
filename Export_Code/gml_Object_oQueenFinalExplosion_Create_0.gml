image_alpha = 0
state = 0
statetime = 0
glow = instance_create(oQueen.x, oQueen.y, oQueenFinalGlow)
alarm[0] = 30
mus_fadeout(musQueen)
mus_fadeout(musQueen3)
oMusicV2.bossbgm = 0
sfx_play(sndQueenExplosionDeath)
oCharacter.queen_drain = 0
