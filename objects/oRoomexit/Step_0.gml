if (room != rTest) visible = 0;

if (instance_exists(oParty1)) and (position_meeting(oParty1.x, oParty1.y - 16, id)) and (oParty1.roomEnter = 0)
{
	global.targetRoom = targetRoom;
	global.targetY = targetY;
	global.targetX = targetX;
	global.targetDir = oParty1.faceDir;
	room_goto(targetRoom);
	//instance_destroy();
}