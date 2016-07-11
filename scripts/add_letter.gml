draw_set_font(font);
if string_char_at(text[page], i) = "#"
{
    letterY += round(string_height("A") * bubbleStretch);
    if string_char_at(text[page], i+1) = "*"
    {
        letterX = x;
    }
    else if string_char_at(text[page], 0) = "*"
    {
        letterX = x + string_width("* ") + 3;
    }
    else
    {
        letterX = x;
    }
}else{
    letterInstance = instance_create(letterX, letterY, Letter);
    with letterInstance
    {
        wiggle = other.wiggle;
        parent = other.id;
        font = other.font;
        draw_set_font(font);
        letter = string_char_at(other.text[other.page], other.i);
        color = other.color;
        shake = other.shake;
        wobble = other.wobble;
        relative = other.relative;
    }
    
    letterX += string_width(letterInstance.letter) + kerning;
}
