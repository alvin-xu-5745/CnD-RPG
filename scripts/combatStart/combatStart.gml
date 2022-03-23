function combatStart(){
	instance_create_layer(0, 0, "Instances", oCombatTracker);
	//TBA overlay room with combat ui (thinking like pokemon style)
	//:D
	with(oParty1) {state = stateBattle;}
}