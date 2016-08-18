sound = sndMenuText;
var inst = scrCreateTextBox("You drop the "+string(getItemName(global.inventory[| selectedItem])+"."));
ds_list_delete(global.inventory, selectedItem);
script_execute(state[| 0], ENTER);
inst.clean = false;
index = 0;
