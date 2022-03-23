// @arg message
// @arg portrait
function newtext(fMessage, fPortrait){
	var _obj1;
	if (instance_exists(oText)) {_obj1 = oTextQueued;} else {_obj1 = oText;}
	
	with (instance_create_layer(0, 0, "text", _obj1))
	{
		message = fMessage;
		if (instance_exists(other)) originInstance = other.id else originInstance = noone;
		if (argument_count > 2)
	{	
		responses = argument[2];
		for (var i = 0; i < array_length(responses); i++)
		{
			var _markerPos = string_pos(":", responses[i]);
			responseScripts[i] = real(string_copy(responses[i], 1, _markerPos - 1));
			responses[i] = string_delete(responses[i], 1, _markerPos);
			//breakpoint = 10;
		} 
	}else
		{
			responses[0] = -1;
			responseScripts = [-1];
		}
	}
	
	if !(instance_exists(oTextbox)) 
	{
		with (instance_create_layer(0, 0, "Instances", oTextbox)) 
		{
			
		}
	}
	
	if !(instance_exists(oPortrait))
	{
		with (instance_create_layer(0, 0, "text", oPortrait))
		{
			portrait = fPortrait;
		}
	} else with (instance_create_layer(0, 0, "Instances", oPortraitQueued))
	{
		portraitWaiting = fPortrait;
	}
	
	
	
	with (oParty1) 
	{
		if (state != overworldStateLocked)
		{
			lastState = state;
			state = overworldStateLocked;
		}
	}
}