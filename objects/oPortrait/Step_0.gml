if (impulse = 1)
{
	with(oPortraitQueued)
		{
			ticket -= 1;
		}
	impulse = 0;
}

if (suicide = 1)
{
	instance_destroy();
}