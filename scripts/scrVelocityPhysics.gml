///Allow an object to move based on its velocity.

//Accounts for slopes (scr_slope(,)) and walls (scr_wall_detect(,))
scr_slope(0, Wall);
scr_wall_detect(0, Wall);
x += xSPD;
scr_slope(1, Wall);
scr_wall_detect(1, Wall);
y += ySPD;
