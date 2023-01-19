if(keyboard_check_pressed(vk_enter)){
	switch(room)
	{
		case rm_Start:
			room_goto(rm_LevelOne);
			break;
			
		case rm_Win:
			game_restart();
			break;
	}
}

if(global.playerHealth <=0)
{
	room_restart();
	global.playerHealth = playerMaxHealth;
}