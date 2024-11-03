if (state != 100)
{
    for (j = 0; j < bodylength; j += 1)
    {
        if (round(j) == 0)
        {
            prevsegment = self
            segment = mybody[(bodylength - 2)]
        }
        if (round(j) == 1)
        {
            prevsegment = self
            segment = mybody[(bodylength - 2)]
        }
        if (j > 1 && j < (bodylength - 1))
        {
            prevsegment = mybody[j]
            segment = mybody[(j - 1)]
        }
        if (round(j) == (bodylength - 1))
        {
            prevsegment = mybody[1]
            segment = tailobj
        }
        ds_queue_enqueue(prev_x[round(j)], prevsegment.x)
        ds_queue_enqueue(prev_y[round(j)], prevsegment.y)
        if (ds_queue_size(prev_x[round(j)]) > stepdelay)
        {
            segment.x = ds_queue_head(prev_x[round(j)])
            segment.y = ds_queue_head(prev_y[round(j)])
            ds_queue_dequeue(prev_x[round(j)])
            ds_queue_dequeue(prev_y[round(j)])
        }
    }
}
