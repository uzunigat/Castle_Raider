/// collision();

function collision(){
	
	// apply carried over decimals
	hsp += hsp_decimal;
	vsp += vsp_decimal;
	
	hsp_decimal = hsp - (floor(abs(hsp)) * sign(hsp));
	hsp -= hsp_decimal;
	
	vsp_decimal = vsp - (floor(abs(vsp)) * sign(vsp));
	vsp -= vsp_decimal;
	
	// HORIZONTAL COLLISION
	
	var side;
	
	if hsp > 0 side = bbox_right else side = bbox_left;
	
	// determine which side to test
	var t1 = tilemap_get_at_pixel(global.map, side + hsp, bbox_top);
	var t2 = tilemap_get_at_pixel(global.map, side + hsp, bbox_bottom);
	
	if t1 != VOID or t2 != VOID {
	
		if(hsp > 0) x = x - (x mod global.tile_size) + global.tile_size - 1 - (side - x);
		else x = x - (x mod global.tile_size) - (side - x);
		
		hsp = 0;
	
	}

	x += hsp;
	
	// VERTICAL COLLISION
	
	var side;
	
	if vsp > 0 side = bbox_bottom else side = bbox_top;
	
	// determine which side to test
	var t1 = tilemap_get_at_pixel(global.map, bbox_left,  side + vsp);
	var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + vsp);
	
	if t1 != VOID or t2 != VOID {
	
		if(vsp > 0) y = y - (y mod global.tile_size) + global.tile_size - 1 - (side - y);
		else y = y - (y mod global.tile_size) - (side - y);
		
		vsp = 0;
	
	}
	
	
	y += vsp;


}

