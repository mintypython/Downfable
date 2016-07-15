var str = argument0;
var i = 1;
if string_char_at(str, i) = "["
{
        //Scan for function and argument
        var func = "";
        var init = i;
        i++;
        while string_char_at(str,i) != ":"
        {
            func += string_char_at(str,i);
            i++;
        }
        i++;
        while string_char_at(str, i) != "]"
        {
            i++;
        }
        i++;
        
        switch(func)
        {
            case "portrait":
                return i;
                break;
            default:
                return -1;
                break;
        }
}
