event_user(10)
if instance_exists(head_obj)
{
    head_obj.x = (((x - surf_x) + xoff) + head_x)
    head_obj.y = (((y - surf_y) + yoff) + head_y)
    head_obj.facing = facing
    head_obj.image_angle = (body_angle + head_angle)
    head_obj.image_xscale = facing
}
if instance_exists(mask_obj)
{
    mask_obj.x = (x + xoff)
    mask_obj.y = (y + yoff)
    mask_obj.image_xscale = facing
    mask_obj.image_angle = image_angle
}
if instance_exists(mask2_obj)
{
    mask2_obj.x = (x + xoff)
    mask2_obj.y = (y + yoff)
    mask2_obj.image_xscale = facing
    mask2_obj.image_angle = image_angle
}
if instance_exists(mask3_obj)
{
    mask3_obj.x = (x + xoff)
    mask3_obj.y = (y + yoff)
    mask3_obj.image_xscale = facing
    mask3_obj.image_angle = image_angle
}
if instance_exists(mask4_obj)
{
    mask4_obj.x = (x + xoff)
    mask4_obj.y = (y + yoff)
}
if instance_exists(tail)
{
    tail.facing = facing
    tail.x = (x + lengthdir_x((tail_len * facing), (body_angle + (tail_dir * facing))))
    tail.y = ((y + yoff) + lengthdir_y((tail_len * facing), (body_angle + (tail_dir * facing))))
}
if instance_exists(grab_obj)
{
    grab_obj.x = (x + (70 * facing))
    grab_obj.y = y
}
