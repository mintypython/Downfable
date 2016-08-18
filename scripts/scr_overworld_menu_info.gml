sound = sndMenuText;
var inst = scrCreateTextBox(getItemDescription(global.inventory[| selectedItem]));
script_execute(state[| 0], ENTER);
inst.clean = false;
index = 0;
