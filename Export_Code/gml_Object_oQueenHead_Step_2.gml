event_user(10)
jaw1_obj.x = x
jaw1_obj.y = y
jaw1_obj.image_angle = (image_angle + ujaw_angle)
jaw1_obj.canbehit = canbehit
jaw1_obj.canhit = canhit
jaw2_obj.x = x
jaw2_obj.y = y
jaw2_obj.image_angle = (image_angle + ljaw_angle)
jaw2_obj.canbehit = canbehit
jaw2_obj.canhit = canhit
if instance_exists(grab_obj)
{
    grab_obj.x = (x + 55)
    grab_obj.y = (y - 25)
}
player_x = lengthdir_x(65, ((image_angle + ljaw_angle) - 15))
player_y = lengthdir_y(65, ((image_angle + ljaw_angle) - 15))
instance_activate_object(oSolid)
