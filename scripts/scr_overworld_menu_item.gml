switch(argument0){
    case ENTER:
        options = 0;
        itemArray = 0;
        selectedItem = -1;
        var size = ds_list_size(global.inventory);
        if(size){
            for(var i = 0; i < size; i++){
                itemArray[i] = global.inventory[| i];
                options[i] = itemArray[i];
            }
        }
        else {
            ds_list_delete(state, 0);
            script_execute(state[| 0], ENTER);
        }
        break;
    case UPDATE:
        if(instance_exists(TextBox)){
            exit;
        }
        if(selectedItem == -1){
            if(keyboard_check_pressed(vk_up)){
                index--;
                if(index < 0)
                    index = array_length_1d(options) - 1;
            }
            if(keyboard_check_pressed(vk_down)){
                index++;
                if(index > array_length_1d(options) - 1)
                    index = 0;
            }
        }
        else{
            if(keyboard_check_pressed(vk_left)){
                index--;
                if(index < 0)
                    index = array_length_1d(options) - 1;
            }
            if(keyboard_check_pressed(vk_right)){
                index++;
                if(index > array_length_1d(options) - 1)
                    index = 0;
            }
        }
        if(keyboard_check_pressed(ord("X"))){
            if(selectedItem == -1){
                index = 0;
                ds_list_delete(state, 0);
                script_execute(state[| 0], ENTER);
            }
            else {
                index = selectedItem;
                selectedItem = -1;
                script_execute(state[| 0], ENTER);
            }
        }
        if(keyboard_check_pressed(ord("Z"))){
            if(selectedItem == -1){
                selectedItem = index;
                index = 0;
                options = 0;
                options[0] = scr_overworld_menu_use;
                options[1] = scr_overworld_menu_info;
                options[2] = scr_overworld_menu_drop;
            }
            else{
                script_execute(options[index]);
            }
        }
        break;
    case DRAW:
        draw_set_font(bit_2_overworld);
        draw_set_color(c_black);
        draw_rectangle(94,29,301,220,false);
        border_draw(94,29,301,220,3);
        for(var i = 0; i < array_length_1d(itemArray); i++){
            draw_text(120,i*15+29,getItemName(itemArray[i]));
        }
        if(state[| 0] == scr_overworld_menu_item){
            if(instance_exists(TextBox)){
                exit;
            }
            if(selectedItem == -1){
                draw_sprite(sprHeartOverworld,0,110,index*15+35);
            }
            else{
                draw_text(100,200," USE   INFO  DROP");
                draw_sprite(sprHeartOverworld,0,100+index*50,208);
            }
        }
        break;
}
