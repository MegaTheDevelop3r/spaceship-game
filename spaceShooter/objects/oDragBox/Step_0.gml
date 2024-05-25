/// @description Insert description here
// You can write your code in this editor
//move_bounce_solid(0)

if(global.inPlace){

	other.x = x
	other.y = y
	
	other.phy_angular_velocity = 0
	other.phy_linear_velocity_x = 0
	other.phy_linear_velocity_y = 0

}



move_wrap(true,true, sprite_width/2);

var accel = 1

x+= hspeed
y+= vspeed

/*

if(keyboard_check(ord("X"))){
	anchorPointX = global.shipToBoxDistance * cos(degtorad(-obj_ship.image_angle))
	anchorPointy = global.shipToBoxDistance * sin(degtorad(-obj_ship.image_angle))
	if(sprite_index==sDragBoxActive){
		phy_linear_damping = 0.8
		physics_apply_impulse(x, y, sign(x-(obj_ship.x + anchorPointX))*-19, sign(y-(obj_ship.y + anchorPointy))*-19)
		if(soundPlaying == false){
			snd = audio_play_sound(gravity_gun, true,0)
		
			soundPlaying = true
	}
	}
}
*/


if(sprite_index==sDragBoxActive){
 
          

if(keyboard_check(ord("X")) && !global.inPlace){
	
	if(soundPlaying == false){
			snd = audio_play_sound(gravity_gun, 0,true)
		
			soundPlaying = true
	}
	
	
	if(global.shipToBoxDistance>0){
	
	anchorPointX = global.shipToBoxDistance * cos(degtorad(-obj_ship.image_angle))
	anchorPointy = global.shipToBoxDistance * sin(degtorad(-obj_ship.image_angle))
	
	
		//instance_create_depth(obj_ship.x + anchorPointX,obj_ship.y + anchorPointy,0,oButtonBlue)

var ptdr = point_direction(  x,y,obj_ship.x + anchorPointX,obj_ship.y + anchorPointy)

var ptds = sqrt( power(point_distance(x,y,obj_ship.x + anchorPointX,obj_ship.y + anchorPointy),2) )



physics_apply_impulse(x, y, sign(x-(obj_ship.x + anchorPointX))*-20, sign(y-(obj_ship.y + anchorPointy))*-20)


if(ptds > 100){
	phy_linear_damping = 0.7
}
else{
	phy_linear_damping = 2
}




//speed-=1
	}
}






global.dragBoxX = x
	global.dragBoxY = y

 
}




if(!keyboard_check(ord("X"))){
	sprite_index = sDragBox
	audio_stop_sound(snd)
	soundPlaying = false
	phy_linear_damping = 0.1
}
