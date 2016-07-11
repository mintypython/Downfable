///Reset all controls at the start of the step to prevent sticky keys
var p = 0;

repeat (players)
{
    key_up[p] = 0;
    key_down[p] = 0;
    key_left[p] = 0;
    key_right[p] = 0;
    key_pause[p] = 0;
    key_primary[p] = 0;
    key_secondary[p] = 0;
    
    p++;
}
