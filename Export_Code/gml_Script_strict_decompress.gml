var input, input_size, output, index, ml, inv_dict, char, n;
input = argument0
input_size = string_length(input)
output = ""
index = 1
ml = ds_map_find_value(global._strict_data, "max_length")
inv_dict = ds_map_find_value(global._strict_data, "inv_dictionary")
while (index <= input_size)
{
    char = string_ord_at(input, index)
    if (char == 255)
    {
        n = string_ord_at(input, (index + 1))
        output += string_copy(input, (index + 2), n)
        index += (n + 2)
    }
    else if (char == 254)
    {
        output += string_char_at(input, (index + 1))
        index += 2
    }
    else
    {
        output += ds_list_find_value(inv_dict, char)
        index++
    }
}
return output;
