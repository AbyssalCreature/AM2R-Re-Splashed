shader_set(shGameBoy)
switch oControl.palette_number
{
    case 1:
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color1"), 31, 31, 31)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color2"), 77, 83, 60)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color3"), 139, 149, 109)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color4"), 196, 207, 161)
        break
    case 2:
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color1"), 31, 31, 31)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color2"), 60, 73, 83)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color3"), 109, 132, 149)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color4"), 162, 188, 207)
        break
    case 3:
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color1"), 31, 31, 31)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color2"), 72, 72, 72)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color3"), 130, 130, 130)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color4"), 185, 185, 185)
        break
    case 4:
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color1"), 0, 0, 0)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color2"), 101, 0, 0)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color3"), 188, 0, 0)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color4"), 255, 0, 0)
        break
    case 5:
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color1"), 11, 25, 32)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color2"), 47, 105, 87)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color3"), 134, 194, 112)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color4"), 245, 250, 239)
        break
    case 6:
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color1"), oControl.mod_color1value1, oControl.mod_color1value2, oControl.mod_color1value3)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color2"), oControl.mod_color2value1, oControl.mod_color2value2, oControl.mod_color2value3)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color3"), oControl.mod_color3value1, oControl.mod_color3value2, oControl.mod_color3value3)
        shader_set_uniform_f(shader_get_uniform(shGameBoy, "u_color4"), oControl.mod_color4value1, oControl.mod_color4value2, oControl.mod_color4value3)
        break
}

