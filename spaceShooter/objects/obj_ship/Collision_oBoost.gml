/// @description Insert description here
// You can write your code in this editor

var colliding_boost_id = instance_place(x, y, oBoost);
if (colliding_boost_id != noone) {
	
	phy_speed_x += 80 * cos(degtorad(colliding_boost_id.image_angle))
	phy_speed_y += -80 * sin(degtorad(colliding_boost_id.image_angle))
	
	
}

