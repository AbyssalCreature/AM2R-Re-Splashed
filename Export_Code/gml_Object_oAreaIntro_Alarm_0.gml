var index, i;
index = real(string_char_at(sprite_get_name(sprite_index), 9))
for (i = 0; i < (image_number + 1); i++)
    pause[i] = 0
pause[oControl.mod_header[index, 1]] = quarter_delay
pause[oControl.mod_header[index, 2]] = quarter_delay
pause[oControl.mod_header[index, 3]] = quarter_delay
pause[oControl.mod_header[index, 4]] = final_delay
if (sprite_index == sIntro_A7)
{
    pause[oControl.mod_header[index, 2]] = (quarter_delay * 2)
    pause[oControl.mod_header[index, 3]] = (quarter_delay * 2)
    pause[oControl.mod_header[index, 4]] = (quarter_delay * 2)
}
visible = true
image_speed = 0.25
