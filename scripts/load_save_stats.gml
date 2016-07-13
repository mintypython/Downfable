saveMap = ds_map_secure_load("file0.sav");

global.name = ds_map_find_value(saveMap, "name");
global.level = ds_map_find_value(saveMap, "level");
global.location = ds_map_find_value(saveMap, "location");
global.IngameTimer = ds_map_find_value(saveMap, "ingametimer");

ds_map_destroy(saveMap);
