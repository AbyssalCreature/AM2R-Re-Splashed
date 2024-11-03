event_user(10)
if instance_exists(head_obj)
{
    head_obj.x = (((x - surf_x) + xoff) + head_x)
    head_obj.y = (((y - surf_y) + yoff) + head_y)
    head_obj.head_spr = head_spr
    head_obj.head_frame = head_frame
    head_obj.facing = facing
    head_obj.image_angle = (body_angle + head_angle)
    head_obj.image_xscale = facing
}
if instance_exists(body_obj)
{
    body_obj.x = (x + xoff)
    body_obj.y = (y + yoff)
    body_obj.image_angle = body_angle
    body_obj.image_xscale = facing
}
if instance_exists(mask_obj)
{
    mask_obj.x = (x + xoff)
    mask_obj.y = (y + yoff)
    mask_obj.image_xscale = facing
}
