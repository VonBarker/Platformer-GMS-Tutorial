// Inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Movement
var _move = key_right - key_left;

if(walljumping = false)
{
	hsp = _move * walksp;
}

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_Wall))
{
	jumps = jumpsmax;
	grounded = true;
}
else grounded = false;

if(key_jump) && (jumps >= 1) 
{
	if(grounded = true)
	{
		jumps = jumps - 1;
		vsp = -jumpsp;
	}
	else
	{
		jumps = jumps - 1.1;
		vsp = -jumpsp;
	}
}

if (key_jump) && (place_meeting(x+1,y,obj_Wall))
{
	vsp = -jumpsp;
	hsp = -walksp
	walljumping = true;
	alarm[0] = 15;
}
else if (key_jump) && (place_meeting(x-1,y,obj_Wall))
{
	vsp = -jumpsp;
	hsp = walksp
	walljumping = true;
	alarm[0] = 15;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_Wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_Wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
else if (place_meeting(x+hsp,y,obj_WallNoGrip))
{
	while (!place_meeting(x+sign(hsp),y,obj_WallNoGrip))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;


//Vertical Collision
if (place_meeting(x,y+vsp,obj_Wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_Wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,obj_Wall))
{
	sprite_index = spr_PlayerJump
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_Player;
	}
	else
	{
		sprite_index = spr_PlayerWalk;
	}
}

if (hsp != 0) image_xscale = sign(hsp);