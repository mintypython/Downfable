if ds_list_size(global.enemyList) = 1
{
    instance_create(room_width/2, room_height/4, ds_list_find_value(global.enemyList, 0));
    ds_list_delete(global.enemyList, 0);
}
else
{
    var i = 0;
    repeat(ds_list_size(global.enemyList))
    {
        instance_create(room_width/4 + 100*i, room_height/4, ds_list_find_value(global.enemyList, i));
        i++;
    }
    repeat(ds_list_size(global.enemyList))
    {
        ds_list_delete(global.enemyList, 0);
    }
}
