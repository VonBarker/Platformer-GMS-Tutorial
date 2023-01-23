if(!invincible)
{
	wallStrength = wallStrength - 1;
	invincible = true;
	alarm[0] = 5;
}

if(wallStrength <= 0)
{
	instance_destroy();
}