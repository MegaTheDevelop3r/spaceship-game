/// @description Insert description here
// You can write your code in this editor


image_angle = obj_ship.image_angle

phy_linear_velocity_x = 10000* cos(degtorad(image_angle))
phy_linear_velocity_y += -10000* sin(degtorad(image_angle))



phy_rotation = -image_angle