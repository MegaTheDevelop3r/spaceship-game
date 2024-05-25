/// @description Insert description here
// You can write your code in this editor







	with(oEnemyAgressive){
  if (distance_to_object(other.id) < 5)
  {
	
   
  
 boxVel = sqrt(power(other.phy_linear_velocity_x, 2) + power(other.phy_linear_velocity_y, 2))
  
  
  
  totalVel = sqrt(power(phy_linear_velocity_x - other.phy_linear_velocity_x, 2) + power(phy_linear_velocity_y - other.phy_linear_velocity_y,2))
  
  
  if(totalVel > 150 && boxVel>80){
  audio_stop_sound(snd)
   instance_destroy()
  }
  v = other.phy_linear_velocity_x

	other.phy_linear_velocity_x = other.phy_linear_velocity_y
	
	other.phy_linear_velocity_y = v
  }
}

	
