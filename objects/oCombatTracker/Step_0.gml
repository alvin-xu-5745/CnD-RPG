inputSlowMotion = keyboard_check(vk_control);
inputActivate = keyboard_check_pressed(vk_space);
inputEndCombat = keyboard_check_pressed(vk_shift);
if(inputActivate and playerAP >= 1 and moveDelay = 0) {
	playerAP -= 1;
	moveDelay= 1;
}

if(inputSlowMotion) {
	slowMotion = 0.2;
} else slowMotion = 1;

turnTimer += turnTick * slowMotion;

if(turnTimer >= turnLimit) {
	turnTimer = 0;
	turnEnd = 1;
}

if(turnEnd = 1) {
	turnEnd = 0;
	if(moveDelay > 0){moveDelay -= 1;}
	if(playerAP < playerAPmax){playerAP += 0.5;}
	//add end turn effects
}

if(inputEndCombat){
	instance_destroy();	
	with(oParty1){state = overworldStateFree;}
}

