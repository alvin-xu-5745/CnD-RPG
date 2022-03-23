// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stanceChange(){
	stanceid = argument0;
	var stance_map = stance[stanceid];

	poisemax = stance_map[? "poisemax"];
	poiseregen = stance_map[? "poiseregen"];
	flowmax = stance_map[? "flowmax"];
	flowgain = stance_map[? "flowgain"];

	move1name = stance_map[? "move1name"];
	move1cost = stance_map[? "move1cost"];
	move1flow = stance_map[? "move1flow"];
	move1hurt = stance_map[? "move1hurt"];
	move1sprd = stance_map[? "move1sprd"];
	move1anim = stance_map[? "move1anim"];
	move1efct = stance_map[? "move1efct"];

	move2name = stance_map[? "move2name"];
	move2cost = stance_map[? "move2cost"];
	move2flow = stance_map[? "move2flow"];
	move2hurt = stance_map[? "move2hurt"];
	move2sprd = stance_map[? "move2sprd"];
	move2anim = stance_map[? "move2anim"];
	move2efct = stance_map[? "move2efct"];
}