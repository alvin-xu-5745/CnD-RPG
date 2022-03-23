draw_set_font(fTrollface);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _print = string_copy(message, 1, textProgress);

if (responses[0] != -1 and textProgress >= string_length(message))
{
	for (var i = 0; i < array_length(responses); i++)
	{
		_print += "\n";
		//if (i = responseSelected) _print += "> ";
		_print += responses[i];
		if (i = responseSelected) _print += " <-";
	}
}

draw_text (x1 + 8, y1 + 12, _print);