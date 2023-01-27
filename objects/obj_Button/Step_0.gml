if(keyboard_check_pressed(ord("E")) && distance_to_object(obj_Player) < 128)
{
	if(instance_exists(obj_ToggleableWallOn))
	{
		obj_ToggleableWallOn.alarm[0] = 1;
	}
	if(instance_exists(obj_ToggleableWallOff))
	{
		obj_ToggleableWallOff.alarm[0] = 1;
	}	
}