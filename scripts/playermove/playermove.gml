// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playermove(){
	#region move right
	if(midwalk = 0 and inputRight = 1){
		sprite_index = spriteMoveRight;
		faceDir = 1;
		if (tilemap_get(collisionMap, xpos + 1, ypos - 1) = false) and (instance_position(x + 16, y - 16, pEntity) = noone)
		{
			xfrom = xpos;
			yfrom = ypos;
		
			xto = xpos + 1;
			yto = ypos;
		
			xpos = xto;
			ypos = yto;
		
			midwalk = 1;
			if (object_index = oParty1) global.followMemory[0] = 1;
		}
	}
	#endregion
	#region move left
		if(midwalk = 0 and inputLeft = 1){
		sprite_index = spriteMoveLeft;
		faceDir = 3;
		if (tilemap_get(collisionMap, xpos - 1, ypos - 1) = false) and (instance_position(x - 16, y - 16, pEntity) = noone)
		{
			xfrom = xpos;
			yfrom = ypos;
		
			xto = xpos - 1;
			yto = ypos;
		
			xpos = xto;
			ypos = yto;
		
			midwalk = 1;
			if (object_index = oParty1) global.followMemory[0] = 3;
		}
	}
	#endregion
	#region move up
		if(midwalk = 0 and inputUp = 1){
		sprite_index = spriteMoveUp;
		faceDir = 2;
		if (tilemap_get(collisionMap, xpos, ypos - 2) = false) and (instance_position(x, y - 32, pEntity) = noone)
		{
			xfrom = xpos;
			yfrom = ypos;
		
			xto = xpos;
			yto = ypos - 1;
		
			xpos = xto;
			ypos = yto;
		
			midwalk = 1;
			if (object_index = oParty1) global.followMemory[0] = 2;
		}
	}
	#endregion
	#region move down
		if(midwalk = 0 and inputDown = 1){
		sprite_index = spriteMoveDown;
		faceDir = 4;
		if (tilemap_get(collisionMap, xpos, ypos) = false) and (instance_position(x, y, pEntity) = noone)
		{
			xfrom = xpos;
			yfrom = ypos;
		
			xto = xpos;
			yto = ypos + 1;
		
			xpos = xto;
			ypos = yto;
		
			midwalk = 1;
			if (object_index = oParty1) global.followMemory[0] = 4;
		}
	}
	#endregion
}