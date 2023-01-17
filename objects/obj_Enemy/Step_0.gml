hsp = dir * walksp;
vsp = vsp + grv;

if (place_meeting(x+hsp,y,obj_Wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_Wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	dir = dir * -1;
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
	
	if(!position_meeting(x + (sprite_width/2)*dir, y + (sprite_height/2) + 1, obj_Wall))
	{
		dir = dir * -1;
	}
}
y = y + vsp;