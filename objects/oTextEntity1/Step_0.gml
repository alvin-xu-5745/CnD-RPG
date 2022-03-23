if (impulse = 1 and memory = -1){
	//create new text
	newtext("Another green box.", spNikoDefault);
	newtext("I hope this works properly.", spNikoHope); 
	newtext("Do you think this is working?", spNikoDefault, ["0:I think so!", "1:Probably not", "2:I am so tired.."]);
	impulse = 0;
}
#region response 0
if (response = 0) {
	newtext("I really hope that is true..", spNikoHope);
	response = -1;
	memory = 0;
}

if (impulse = 1 and memory = 0){
	newtext("I guess this DOES work properly!", spNikoCowon);
	impulse = 0;
}
#endregion

#region response 1 (and branches 3 4)
if (response = 1){
	newtext("What the heck!", spNikoDefault);
	newtext("You must be joking!", spNikoCowon);
	response = -1;
	memory = 1;
}

if (impulse = 1 and memory = 1){
	newtext("The whole thing would just crash if this isn't working properly!", spNikoCowon);
	newtext("Give me a serious answer.", spNikoDefault, ["3:Fine, you're right.", "4:I'm still not sure.."]);
	impulse = 0;
}

if (response = 3){
	newtext("That's what I thought!", spNikoCowon);
	response = -1;
	memory = 0;
}

if (response = 4){
	newtext("Nope. I don't believe you.", spNikoDefault);
	response = -1;
	memory = 0;
}
#endregion

#region response 2
if (response = 2) {
	newtext("Well maybe you should take a break.", spNikoDefault);
	response = -1;
	memory = 2;
}
#endregion

if (impulse = 1 and memory = 2){
	newtext("...", spNikoHope);
	impulse = 0;
}

//the first complex "branching" text entity