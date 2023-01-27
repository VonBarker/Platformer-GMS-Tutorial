// Inputs
key_up = keyboard_check(ord("W"));
key_left = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
click = mouse_check_button_pressed(mb_left);

// Movement
var _move = key_right - key_left;

if(controlable = true)
{
	hsp = _move * walksp;
}

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_Wall))
{
	jumps = jumpsMax;
	grounded = true;
}
else grounded = false;

//Double Jump
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

//Walljump
if (key_jump) && (place_meeting(x+1,y,obj_Wall)) && (key_right)
{
	vsp = -jumpsp;
	hsp = -walksp*1.5;
	controlable = false;
	alarm[0] = 40;
}
else if (key_jump) && (place_meeting(x-1,y,obj_Wall)) && (key_left)
{
	vsp = -jumpsp;
	hsp = walksp;
	controlable = false;
	alarm[0] = 40;
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

if (hsp != 0)
{
	image_xscale = sign(hsp);
}

//Attack
if(click && key_up && canAttack)
{
	instance_create_layer(x, y - (sprite_height/2) - 10, "Instances", obj_UpwardAttack);
	canAttack = false;
	alarm[2] = weaponCooldown;
}
else if(click && key_down && canAttack)
{
	instance_create_layer(x, y + (sprite_height/2) + 10, "Instances", obj_DownwardAttack);
	canAttack = false;
	alarm[2] = weaponCooldown;
}
else if(click && canAttack)
{
	instance_create_layer(x + (32 * image_xscale), y, "Instances", obj_HorizontalAttack);
	canAttack = false;
	alarm[2] = weaponCooldown;
}