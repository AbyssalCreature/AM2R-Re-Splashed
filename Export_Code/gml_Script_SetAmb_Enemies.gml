if global.opsoundfx
{
    snd[0] = 59
    snd[1] = 61
    snd[2] = 62
    snd[3] = 63
    snd[4] = 64
    snd[5] = 65
    snd[6] = 66
    snd[7] = 67
    snd[8] = 71
    snd[9] = 72
    snd[10] = 60
    snd[11] = 73
    snd[12] = 74
    snd[13] = 75
    snd[14] = 76
    snd[15] = 77
    snd[16] = 78
    snd[17] = 79
    snd[18] = 80
    snd[19] = 81
    snd[20] = 82
    i = 0
    repeat (21)
    {
        SetSoundAmb(snd[i], global.soundamb)
        i += 1
    }
}
