if(keyboard_check_pressed(vk_enter)){
	switch(room)
	{
		case rm_Start:
			room_goto(rm_LevelOne);
			break;
			
		case rm_Win:
		case rm_GameOver:
			game_restart();
			break;
	}
}

if(lives <= 0)
{
	room_goto(rm_GameOver);	
}

if(keyboard_check_pressed(ord("I")))
{
	obj_TogglableWallOff.alarm[0] = 1;	
	obj_TogglableWallOn.alarm[0] = 1;
}