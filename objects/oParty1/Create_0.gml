spriteMoveRight = sPlayerNikoR;
spriteMoveLeft = sPlayerNikoL;
spriteMoveUp = sPlayerNikoU;
spriteMoveDown = sPlayerNikoD;

if (global.targetX != -1) {x = global.targetX;y = global.targetY;}
if (global.targetDir != -1) 
{
	faceDir = global.targetDir;
	if (global.targetDir = 1) sprite_index = spriteMoveRight;
	if (global.targetDir = 3) sprite_index = spriteMoveLeft;
	if (global.targetDir = 2) sprite_index = spriteMoveUp;
	if (global.targetDir = 4) sprite_index = spriteMoveDown;
}else {faceDir = 4;sprite_index = spriteMoveDown;}

image_speed = 0;


state = overworldStateFree;
lastState = state;
midwalk = 0;

collisionMap = layer_tilemap_get_id(layer_get_id("collisions"));

xpos = x div TILEWIDTH;
ypos = y div TILEHEIGHT;

xfrom = xpos;
yfrom = ypos;

xto = xpos;
yto = ypos;

walkAnimLength = 0.2;
walkAnimProgress = 0;
animSpeed = walkAnimLength / 2;


