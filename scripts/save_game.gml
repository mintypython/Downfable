global.SaveIngameTimer = global.IngameTimer;
global.SaveRoom = room;
global.SavePlayerX = Player.x;
global.SavePlayerY = Player.y;
global.SaveLevel = global.level;
global.SaveName = global.name;
global.SaveLocation = global.location;
global.SaveMaxHP = global.maxHP;
global.SaveHP = global.hp;
global.SaveDef = global.def;
global.SaveInventory = global.inventory

var saveMap = ds_map_create();

ds_map_add(saveMap, "ingametimer", global.SaveIngameTimer);
ds_map_add(saveMap, "room", global.SaveRoom);
ds_map_add(saveMap, "playerX", global.SavePlayerX);
ds_map_add(saveMap, "playerY", global.SavePlayerY);
ds_map_add(saveMap, "level", global.SaveLevel);
ds_map_add(saveMap, "name", global.SaveName);
ds_map_add(saveMap, "location", global.SaveLocation);
ds_map_add(saveMap, "inventory", global.SaveInventory);
ds_map_add(saveMap, "maxHP", global.SaveMaxHP);
ds_map_add(saveMap, "HP", global.SaveHP);
ds_map_add(saveMap, "def", global.SaveDef);

ds_map_secure_save(saveMap,"file0.sav");

ds_map_destroy(saveMap);
