script_execute(asset_get_index(getItemName(global.inventory[| selectedItem])));
sound = sndMenuText;
//scrCreateTextBox(ds_grid_get(global.items, global.inventory[| selectedItem], 2));
var inst = scrCreateTextBox(getItemFlavor(global.inventory[| selectedItem]));
if(getItemConsumable(global.inventory[| selectedItem]))
    ds_list_delete(global.inventory, selectedItem);
script_execute(state[| 0], ENTER);
inst.clean = false;
index = 0;
