with TextBox
{
    instance_destroy();
}

load_menu_nav(page);

if page = 0
{
    var textInstance = instance_create(50, 270, TextBox);
    with textInstance
    {
        text[0] = "* "+string(other.mainText);
    }
}
else if page = 1 || page = 2
{
    for (i=0;i<instance_number(Enemy);i++)
    {
        var inst = instance_create(100,270 + 32*i,TextBox);
        with inst
        {
            text[0] = "";
            if instance_find(Enemy,i).sparable = 1
            {
                text[0] += "[c:c_yellow]";
            }
            text[0] += "* "+instance_find(Enemy,i).name;
            instant = 1;
            event_user(0);
        }
    }
}
else if page = 3
{
    var a = 0;
    var b = 0;
    var i = 0;
    for (i=0;i<ds_list_size(global.inventory) - (4 *page_ii) && i < 4;i++)
    {
        if a > 1
        {
            a = 0;
            b++;
        }
        var inst = instance_create(a*255+100,b*32+270,TextBox);
        with inst
        {
            text[0] = "* " + getItemName(ds_list_find_value(global.inventory, i+4*other.page_ii));
            instant = 1;
            event_user(0);
        }
            
        a++;
    }
    
}
else if page = 4
{
    var inst = instance_create(100,270,TextBox);
    inst.text[0] = "";
    yellow = 0;
    with Enemy
    {
        if sparable = 1
        {
            other.yellow = 1;
        }
    }
    if yellow = 1
    {
        inst.text[0] += "[c:c_yellow]";
    }
    inst.text[0] += "* Spare";
    inst.instant = 1;
    with inst
    {
        event_user(0);
    }
    var inst = instance_create(100,302,TextBox);
    with inst
    {
        text[0] = "* Flee";
        instant = 1;
        event_user(0);
    }
}
