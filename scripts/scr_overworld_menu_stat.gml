switch(argument0){
    case ENTER:
        options = 0;
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
        break;
    case DRAW:
        break;
}
