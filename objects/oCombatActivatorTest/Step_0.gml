if (impulse = 1)
{
	//create new text
	newtext("Initiating combat!", spNikoCowon);
	impulse = 0;
	memory = 1;
}

if (memory = 1)
{
	memory = 0;
	with(oParty1) {
		lastState = combatStart;
	}
}