if(!invincible)
{
	enemyHp = enemyHp - 1;
	invincible = true;
	alarm[0] = 5;
	controlable = false;
	hsp = 4*sign(x - instance_nearest(x, y, obj_HorizontalAttack).x);
	vsp = -2;
	alarm[0] = 5;
	alarm[1] = 10;
}