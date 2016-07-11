var length = array_height_2d(target.acts);
var a = 0;
var b = 0;
for (i = 0; i < length; i++)
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
