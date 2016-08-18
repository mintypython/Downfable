switch(argument0){
    case ENTER:
        options = 0;
        options[0] = scr_overworld_menu_item;
        options[1] = scr_overworld_menu_stat;
        break;
    case UPDATE:
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
        if(keyboard_check_pressed(ord("Z"))){
            ds_list_insert(state, 0, options[index]);
            script_execute(state[| 0], ENTER);
        }
        break;
    case DRAW:
        draw_set_font(bit_2_overworld);
        draw_set_color(c_black);
        draw_rectangle(19,29,84,78,false);
        draw_rectangle(19,87,84,155,false);
        border_draw(19,29,84,78,3);
        border_draw(19,87,84,155,3);
        draw_text(23,30,"AAA");
        draw_set_font(mars_small);
        draw_text(23,50,"LV#HP#G");
        draw_text(40,50,"0#"+string(global.hp)+"/"+string(global.maxHP)+"#"+string(global.gold));
        draw_set_font(bit_2_overworld);
        draw_text(40,90,"ITEM#STAT");
        if(state[| 0] == scr_overworld_menu_main){
            draw_sprite(sprHeartOverworld,0,30,index*15+100);
        }
        break;
}
