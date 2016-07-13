//Loads Stats Temporarily In Memory so
//actual stats are not overridden
if (file_exists("file0.sav"))
{
    saveMap = ds_map_secure_load("file0.sav");
    
    global.temp_name = ds_map_find_value(saveMap, "name");
    global.temp_level = ds_map_find_value(saveMap, "level");
    global.temp_location = ds_map_find_value(saveMap, "location");
    global.temp_ingametimer = ds_map_find_value(saveMap, "ingametimer");
    
    ds_map_destroy(saveMap);
}
else
{
    global.temp_name = "EMPTY";
    global.temp_level = 0;
    global.temp_location = "--";
    global.temp_ingametimer = 0;
}
