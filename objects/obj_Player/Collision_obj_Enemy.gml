controlable = false;
hsp = obj_Enemy.knockbackForce*sign(x - instance_nearest(x, y, obj_Enemy).x);
vsp = -obj_Enemy.knockbackForce*1.25;
alarm[0] = 15;
if(!invincible)
{
	global.playerHealth = global.playerHealth - 1;
}
invincible = true;
alarm[1] = 10;