if (other.x < 256)
    tr_x = (other.x + 220)
else
    tr_x = (other.x - 140)
create_gamma(tr_x, (other.y + 32), 20, 1)
global.event[161] = 1
instance_destroy()
