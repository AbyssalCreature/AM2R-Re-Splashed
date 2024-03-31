var _string;
_string = argument[0]
if (string_length(_string) > 0)
{
    if ds_exists(ConsoleHistory, 2)
    {
        ds_list_add(ConsoleHistory, _string)
        ConsoleViewLine = ds_list_size(ConsoleHistory)
    }
}
