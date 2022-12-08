if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_Start:
			room_goto_next();
			break;
	}
}