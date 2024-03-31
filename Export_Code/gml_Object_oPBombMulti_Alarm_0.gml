if (special == 0)
{
    expl = instance_create(x, y, oPBombExpl)
    expl.sax = sax
    expl.myid = myid
    expl = instance_create(x, y, oPBombExpl)
    expl.image_angle = 90
    expl.sax = sax
    expl.myid = myid
    expl = instance_create(x, y, oPBombExpl)
    expl.image_angle = 180
    expl.sax = sax
    expl.myid = myid
    expl = instance_create(x, y, oPBombExpl)
    expl.image_angle = 270
    expl.sax = sax
    expl.myid = myid
    sfx_play(sndPBombExpl)
}
else
    instance_create(x, y, oQueenFinalExplosion)
instance_destroy()
