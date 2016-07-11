if string_char_at(text[page], i) = "[" && string_char_at(text[page], i-1) != "/"
{
    while (string_char_at(text[page], i) = "[")
    {
        //Scan for function and argument
        var func = "";
        var arg = "";
        var init = i;
        i++;
        while string_char_at(text[page],i) != ":"
        {
            func += string_char_at(text[page],i);
            i++;
        }
        i++;
        while string_char_at(text[page], i) != "]"
        {
            arg += string_char_at(text[page], i);
            i++;
        }
        i++;
        
        switch(func)
        {
            //ADD A PAUSE - w "WAIT"
            case "w":
                pause = real(arg);
                break;
            //CHANGE TEXT COLOR - c "COLOR"
            case "c":
                if arg = "c_red"
                {
                    color = c_red;
                }
                else if arg = "c_white"
                {
                    color = c_white;
                }
                else if arg = "c_yellow"
                {
                    color = c_yellow;
                }
                else if arg = "c_green"
                {
                    color = c_green;
                }
                else if arg = "c_orange"
                {
                    color = c_orange;
                }
                else if arg = "c_blue"
                {
                    color = c_blue;
                }
                else if arg = "c_lime"
                {
                    color = c_lime;
                }
                else if arg = "c_purple"
                {
                    color = c_purple;
                }
                break;
            //TEXT SPEED - t "TEXT"
            case "t":
                text_speed = real(arg);
                break;
            //TEXT SKIPS - s "SKIP"
            case "s":
                text_speed_2 = real(arg);
                break;
            //SHAKEY TEXT - shake "SHAKE"
            case "shake":
                shake = real(arg);
                break;
            //CHANGE TEXT SOUND - snd "SOUND"
            case "snd":
                typeSnd = asset_get_index(arg);
                break;
            default:
                i = init;
        }
    }
}
