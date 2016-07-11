var widthString = "";
var width_i = 0;
for (width_i=0;width_i<string_length(text[page])+1;width_i++)
{
    if string_char_at(text[page], width_i) != "["
    {
        widthString += string_char_at(text[page], width_i);
    }
    else
    {
        while(string_char_at(text[page], width_i) != "]")
        {
            width_i++;
        }
    }
}

width = string_width(widthString)*bubbleStretch;
