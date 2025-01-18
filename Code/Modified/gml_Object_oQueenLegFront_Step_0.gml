joint0_x = (x - 13)
joint0_y = (y - 20)
joint1_x = (joint0_x + lengthdir_x(joint1_len, (130 + image_angle)))
joint1_y = (joint0_y + lengthdir_y(joint1_len, (130 + image_angle)))
joint1_angle = point_direction(joint1_x, joint1_y, joint2_x, joint2_y)
joint1_scale = (point_distance(joint1_x, joint1_y, joint2_x, joint2_y) / 60)
joint2_x = ((joint3_x + 21) + ((x - (joint3_x + 13)) / 2))
joint2_y = (y - ((y - joint3_y) * 0.583))
joint3_angle = point_direction(joint3_x, joint3_y, joint2_x, joint2_y)
joint3_scale = (point_distance(joint3_x, joint3_y, joint2_x, joint2_y) / 36.7)
image_angle = clamp((x - (joint3_x + 13)), -30, 20)
if (state == 0)
{
    if ((x - joint3_x) < -24)
    {
        state = 1
        targetx = (x + 80)
        vspeed = -2.5
        gravity = 0.2
        gravity_direction = 270
    }
    if ((x - joint3_x) > 70)
    {
        state = 1
        targetx = (x - 80)
        vspeed = -2.5
        gravity = 0.2
        gravity_direction = 270
    }
}
if (state == 1)
{
    if (abs((x - targetx)) > 1)
        x = lerp(x, targetx, (abs(oQueen.maxspeed) / 10))
    else
        state = 0
}
col1 = collision_line(x, (y - 20), x, y, oSolid, true, true)
col2 = collision_point(x, (y + 1), oSolid, 1, 1)
if (col2 < 0)
    y += 1
if (col1 > 0)
{
    y -= 1
    if (vspeed > 0)
    {
        vspeed = 0
        gravity = 0
        event_user(0)
    }
}
