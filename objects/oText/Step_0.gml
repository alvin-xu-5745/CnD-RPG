textProgress += textSpeed;
messageLength = string_length(message);

inputUp = keyboard_check_pressed(ord("W"));
inputDown = keyboard_check_pressed(ord("S"));
responseSelected += (inputDown - inputUp);
var _max = array_length(responses) - 1;
var _min = 0;
if (responseSelected > _max) responseSelected = _max;
if (responseSelected < _min) responseSelected = _min;

if (textProgress >= messageLength)
{
	textSpeed = 0;
	if (keyboard_check_pressed(vk_space)) and (responses[0] = -1)
	{
		instance_destroy();
		with (oPortrait) impulse = 1;
		if (instance_exists(oTextQueued))
		{
			with(oTextQueued)
			{
				ticket -= 1;
			}
		} else 
			{
				with (oPortrait) suicide = 1;
				with (oTextbox) suicide = 1;
				with (oParty1) state = lastState;
			}
	}
	if (keyboard_check_pressed(ord("E")) and (responses[0] != -1)) 
	{
		responseChosen = responseScripts[responseSelected];
		with (originInstance) 
		{
			response = other.responseChosen;
			
		}
		instance_destroy();
		with (oPortrait) impulse = 1;
		if (instance_exists(oTextQueued))
		{
			with(oTextQueued)
			{
				ticket -= 1;
			}
		} else 
			{
				with (oPortrait) suicide = 1;
				with (oTextbox) suicide = 1;
				with (oParty1) state = lastState;
			}
	}
}

if (keyboard_check_pressed(vk_space) and textProgress > 2)
{
	textProgress = messageLength;
}