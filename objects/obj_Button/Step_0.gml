if(keyboard_check_pressed(ord("E")) && distance_to_object(obj_Player) < 128)
{
	obj_ToggleableWallOff.alarm[0] = 1;	
	obj_ToggleableWallOn.alarm[0] = 1;
}