global.items = ds_grid_create(20,3);
var i = 0;
/*
    [x,0] = Item name
    [x,1] = Shortened name
    [x,2] = Flavor text
*/
//Face Steak
ds_grid_add(global.items, i,0,"a Face Steak");
ds_grid_add(global.items, i,1,"FaceSteak");
ds_grid_add(global.items, i,2,"Tasted like Mettaton.");
i++;

//Mealworm
ds_grid_add(global.items, i,0,"a Mealworm");
ds_grid_add(global.items, i,1,"Mealworm");
ds_grid_add(global.items, i,2,"Not actually that much of a meal.#DEF increased!");
i++;

//Thumbtack Pancake
ds_grid_add(global.items, i,0,"a Thumbtack Pancake");
ds_grid_add(global.items, i,1,"ThumCake");
ds_grid_add(global.items, i,2,"You eat the Thumbtack Pancake.#* Why.. why would you eat that?");
i++;

//A Stick
ds_grid_add(global.items, i,0,"a Stick");
ds_grid_add(global.items, i,1,"Stick");
ds_grid_add(global.items, i,2,"You throw the stick.  You pick it up.");
i++;
