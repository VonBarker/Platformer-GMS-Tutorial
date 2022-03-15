// Inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);

// Movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,Wall_Object)) && (key_jump)
{
	vsp = -jumpsp
}

//Horizontal Collision
if (place_meeting(x+hsp,y,Wall_Object))
{
	while (!place_meeting(x+sign(hsp),y,Wall_Object))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,Wall_Object))
{
	while (!place_meeting(x,y+sign(vsp),Wall_Object))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,Wall_Object))
{
	sprite_index = Player_SpriteJump
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = Player_Sprite;
	}
	else
	{
		sprite_index = Player_SpriteWalk;
	}
}

if (hsp != 0) image_xscale = sign(hsp);