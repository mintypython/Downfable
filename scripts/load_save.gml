saveMap = ds_map_secure_load("file0.sav");

global.IngameTimer = ds_map_find_value(saveMap, "ingametimer");

global.name = ds_map_find_value(saveMap, "name");
global.level = ds_map_find_value(saveMap, "level");
global.location = ds_map_find_value(saveMap, "location");

ds_list_read(global.inventory, ds_map_find_value(saveMap, "inventory"));

global.maxHP = ds_map_find_value(saveMap, "maxHP");
global.hp = ds_map_find_value(saveMap, "HP");
global.def = ds_map_find_value(saveMap, "def");

instance_create(ds_map_find_value(saveMap, "playerX"), ds_map_find_value(saveMap, "playerY"), Player);
global.firstRoom = ds_map_find_value(saveMap, "room");
room_goto(room_init);

ds_map_destroy(saveMap);
