Player.visible = 0;
global.killCount = 0;
global.xp_gain = 0;
global.gold_gain = 0;
instance_create(0,0,BattleWindowCont);
enemy_populate();
instance_create(0,0,PlayerMenuCont);
instance_create(0,0,TurnCont);
ds_list_clear(global.drops);
