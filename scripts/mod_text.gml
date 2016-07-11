/* LISTS AND FUNCTIONS

ds_list_add(MODIFIER LIST, PAGE, LETTER ON PAGE, VALUE);

text_speed_list = how fast the text writes itself
color_list = what color is the text
pause_list = how long does the text take to being writing
shake_list = how much does the text shake?
instant_list = does the text instantly fill the form?
skip_list = how many letters will be instantly written?
event_list = events that occur while text is being displayed
*/

if ds_list_find_value(text_speed_list, 0) = page
{
    if ds_list_find_value(text_speed_list, 1) = i
    {
        text_speed = ds_list_find_value(text_speed_list, 2);
        repeat(3)
        {
            ds_list_delete(text_speed_list, 0);
        }
    }
}

if ds_list_find_value(text_speed_2_list, 0) = page
{
    if ds_list_find_value(text_speed_2_list, 1) = i
    {
        text_speed_2 = ds_list_find_value(text_speed_2_list, 2);
        repeat(3)
        {
            ds_list_delete(text_speed_2_list, 0);
        }
    }
}

if ds_list_find_value(pause_list, 0) = page
{
    if ds_list_find_value(pause_list, 1) = i
    {
        if instant = 0
        {
            pause = ds_list_find_value(pause_list, 2);
        }
        repeat(3)
        {
            ds_list_delete(pause_list, 0);
        }
    }
}

if ds_list_find_value(color_list, 0) = page
{
    if ds_list_find_value(color_list, 1) = i
    {
        color = ds_list_find_value(color_list, 2);
        repeat(3)
        {
            ds_list_delete(color_list, 0);
        }
    }
}

if ds_list_find_value(shake_list, 0) = page
{
    if ds_list_find_value(shake_list, 1) = i
    {
        shake = ds_list_find_value(shake_list, 2);
        repeat(3)
        {
            ds_list_delete(shake_list, 0);
        }
    }
}

if ds_list_find_value(instant_list, 0) = page
{
    if ds_list_find_value(instant_list, 1) = i
    {
        instant = ds_list_find_value(instant_list, 2);
        repeat(3)
        {
            ds_list_delete(instant_list, 0);
        }
    }
}

if ds_list_find_value(skip_list, 0) = page
{
    if ds_list_find_value(skip_list, 1) = i
    {
        skip = ds_list_find_value(skip_list, 2);
        repeat(3)
        {
            ds_list_delete(skip_list, 0);
        }
    }
}

if ds_list_find_value(event_list, 0) = page
{
    if ds_list_find_value(event_list, 1) = i
    {
        with Event
        {
            script_execute(ds_list_find_value(other.event_list, 2), ds_list_find_value(other.event_list, 3));
        }
        repeat(4)
        {
            ds_list_delete(event_list, 0);
        }
    }
}
