global.items = ds_grid_create(20,5);
var i = 0;
/*
    [x,0] = Item name
    [x,1] = Shortened name
    [x,2] = Flavor text
    [x,3] = Consumable?
    [x,4]  = Extended Description
*/
//Face Steak
ds_grid_add(global.items, i,0,"a Face Steak");
ds_grid_add(global.items, i,1,"FaceSteak");
ds_grid_add(global.items, i,2,"Tasted like Mettaton.");
ds_grid_add(global.items, i,3,true);
ds_grid_add(global.items, i,4,"A tender,[w:5] juicy steak.[w:10]#It looks like Mettaton.");
i++;

//Mealworm
ds_grid_add(global.items, i,0,"a Mealworm");
ds_grid_add(global.items, i,1,"Mealworm");
ds_grid_add(global.items, i,2,"Not actually that much of a meal.#DEF increased!");
ds_grid_add(global.items, i,3,true);
ds_grid_add(global.items, i,4,"It's not actually a worm.[w:10]#It's also not actually a meal.");
i++;

//Thumbtack Pancake
ds_grid_add(global.items, i,0,"a Thumbtack Pancake");
ds_grid_add(global.items, i,1,"ThumCake");
ds_grid_add(global.items, i,2,"You eat the Thumbtack Pancake.#* Why.. why would you eat that?");
ds_grid_add(global.items, i,3,true);
ds_grid_add(global.items, i,4,"A pancake with thumbtacks baked in.[w:10]#You really have no reason to eat this.");
i++;

//A Stick
ds_grid_add(global.items, i,0,"a Stick");
ds_grid_add(global.items, i,1,"Stick");
ds_grid_add(global.items, i,2,"You throw the stick.[w:10]#You pick it up.");
ds_grid_add(global.items, i,3,false);
ds_grid_add(global.items, i,4,"A stick?![w:5] Is that a stick???[w:5]#Oh boy oh boy oh boy oh boy.");
i++;
