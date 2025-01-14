var input, input_size, index, output, ml, dict, verb, l, q, c, code;
input = argument0
input_size = string_length(input)
index = 1
output = ""
ml = ds_map_find_value(global._strict_data, "max_length")
dict = ds_map_find_value(global._strict_data, "dictionary")
verb = ""
while (index <= input_size)
{
    l = min((input_size - (index - 1)), ml)
    q = ""
    c = l
    while (c > 0)
    {
        code = ds_map_find_value(dict, string_copy(input, index, c))
        if (!is_undefined(code))
        {
            q += chr(code)
            encoded = 1
            index += c
            break
        }
        else
        {
            c--
            continue
        }
    }
    if (q == "")
    {
        verb += string_char_at(input, index)
        index++
        if (string_length(verb) == 255)
        {
            q = strict_encode_verb(verb)
            verb = ""
        }
    }
    else if (verb != "")
    {
        q = (strict_encode_verb(verb) + q)
        verb = ""
    }
    output += q
}
if (verb != "")
    output += strict_encode_verb(verb)
return output;
