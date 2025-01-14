var _x, _y, _font, _colorBase, _colorVallid, _colorInvallid, _textColor, _drawHeight, _command, _string, i;
if global.CONSOLE
{
    _x = argument[0]
    _y = argument[1]
    _font = argument[2]
    _colorBase = argument[3]
    _colorVallid = argument[4]
    _colorInvallid = argument[5]
    draw_set_font(_font)
    _textColor = _colorBase
    _drawHeight = string_height(ConsoleVallidChars)
    draw_set_color(_textColor)
    draw_text(_x, _y, ConsoleEntry)
    if (ds_exists(ConsoleCommands, 1) && string_char_at(ConsoleEntry, 1) == CommandPrefix)
    {
        _command = ds_map_find_value(ConsoleCommands, CommandName)
        if is_undefined(_command)
            _textColor = _colorInvallid
        else
            _textColor = _colorVallid
        draw_set_color(_textColor)
        draw_text(_x, _y, CommandName)
    }
    draw_set_color(c_white)
    if ds_exists(ConsoleHistory, 2)
    {
        _string = ""
        i = 0
        while (i < ConsoleViewLine && i < ConsoleLineCount)
        {
            _string = ds_list_find_value(ConsoleHistory, ((ConsoleViewLine - i) - 1))
            draw_text(_x, (_y - (_drawHeight * (i + 1))), _string)
            i++
        }
    }
}
