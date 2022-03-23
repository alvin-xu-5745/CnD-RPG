if(global.targetDir = 1){
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
			roomEnter = 1;
		}
	}
	
if(global.targetDir = 3){
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
			roomEnter = 1;
		}
	}
	
	if(global.targetDir = 2){
		sprite_index = spriteMoveUp;
		faceDir = 2;
		if (tilemap_get(collisionMap, xpos, ypos - 2) = false) and (instance_position(x - 16, y - 16, pEntity) = noone)
		{
			xfrom = xpos;
			yfrom = ypos;
		
			xto = xpos - 1;
			yto = ypos;
		
			xpos = xto;
			ypos = yto;
		
			midwalk = 1;
			roomEnter = 1;
		}
	}