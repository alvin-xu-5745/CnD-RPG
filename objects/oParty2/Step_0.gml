


playermove();

if (midwalk = 1) 
{
	walkAnimProgress += delta_time / 1000000;
	var _numt = walkAnimProgress / walkAnimLength;
	image_index += animSpeed;
	
	if (_numt >= 1) {
		walkAnimProgress = 0;
		_numt = 1;
		midwalk = 0;
		roomEnter = 0;
	}
	
	var _x = lerp(xfrom, xto, _numt);
	var _y = lerp(yfrom, yto, _numt);
	
	x = _x * TILEWIDTH;
	y = _y * TILEWIDTH;
}

if (animating = 0 and midwalk = 0)
{
	image_index = 0;
}

depth = -bbox_bottom