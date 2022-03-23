function overworldStateFree(){
	playermove();
	
	if (inputRight)
	if (inputLeft) with(oParty2) global.followMemory[0] = 3;
	if (inputUp) with(oParty2) global.followMemory[0] = 2;
	if (inputDown) with(oParty2) global.followMemory[0] = 4;
	
	#region interact with entity
	if (midwalk = 0 and inputActivate = 1)
	{
		if (faceDir = 1) activate = instance_position(x + 16, y - 16, pEntity);
		if (faceDir = 2) activate = instance_position(x, y - 32, pEntity);
		if (faceDir = 3) activate = instance_position(x - 16, y - 16, pEntity);
		if (faceDir = 4) activate = instance_position(x, y, pEntity);
		
		if (activate != noone) 
		{
			with (activate) impulse = 1;
		}
	}
	#endregion
}	