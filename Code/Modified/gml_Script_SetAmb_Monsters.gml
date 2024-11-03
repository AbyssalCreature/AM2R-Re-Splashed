if global.opsoundfx
{
    snd[0] = 130
    snd[1] = 131
    snd[2] = 132
    snd[3] = 133
    snd[4] = 134
    snd[5] = 136
    snd[6] = 137
    snd[7] = 138
    snd[8] = 139
    snd[9] = 140
    snd[10] = 141
    snd[11] = 143
    snd[12] = 135
    snd[13] = 142
    i = 0
    repeat (14)
    {
        SetSoundAmb(snd[i], global.soundamb)
        i += 1
    }
}
