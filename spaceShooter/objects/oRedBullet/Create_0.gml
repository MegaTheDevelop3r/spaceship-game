/// @description Insert description here
// You can write your code in this editor
ship = instance_nearest(x,y,oEnemyShip)

image_angle= ship.image_angle + random_range(-12,12)
phy_rotation = -image_angle


phy_linear_velocity_x = 5000* cos(degtorad(image_angle))
phy_linear_velocity_y += -5000* sin(degtorad(image_angle))



