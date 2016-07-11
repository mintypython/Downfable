var a = 0;
var b = 0;
var c = 0;
page_length = floor((ds_list_size(global.inventory) - 1)/4) + 1;
for (i = 0; i < ds_list_size(global.inventory) - (page_ii*4)&& i < 4; i++)
{
    if a > 1
    {
        a = 0;
        b++;
    }
    nav[b,a] = 1;
    a++;
}

if a = 1
{
    nav[b,a] = 0;
}
