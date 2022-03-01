// Script player_idle_state
function player_idle_state(){

	//get input
	get_input();

	// calculate movement
	calculate_movement();
	
	if hsp != 0 state = states.WALK;

	// apply movement
	collision();

	// apply animations
	animate();


}