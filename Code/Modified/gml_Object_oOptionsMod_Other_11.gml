var i;
done = 1
for (i = 0; i <= lastitem; i++)
{
    with (op[i])
        instance_destroy()
}
with (op[50])
    instance_destroy()
