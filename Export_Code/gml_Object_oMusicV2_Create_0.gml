currentbgm = 254
previousbgm = 254
bossbgm = 0
sound_id = 0
playingSAX = 0
prevPlayingSAX = playingSAX
sameRoomSAX = 0
prevSameRoomSAX = sameRoomSAX
fadeoutTimer = 2000
prevSameRoomSAXTimer = 0
stopSAXMusTimer = 0
chasedBySAX = 0
prevChasedBySAX = chasedBySAX
runningFromSAX = 0
useMultistageMusic = 0
if (file_exists("musQueenbreak.ogg") && file_exists("musQueen2.ogg") && file_exists("musQueen3.ogg"))
    useMultistageMusic = 1
