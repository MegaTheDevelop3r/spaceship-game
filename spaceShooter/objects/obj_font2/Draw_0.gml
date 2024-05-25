

/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(fnt_nm);

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

if(room == Room4)
draw_text(cx+cw/2, cy+132,"click space to shoot and break the orange blocks");

if(room== Room1)
draw_text(610,180,"accelerate using the W or up key");

if(room== Room2)
draw_text(780,580,"look around using \n left and right or A and D");

if(room== Room3)
draw_text(900,120,"click down or S to use a brake \n (a helping item)");

if(room== Room5)
draw_text(420,620,"its spinning");

if(room== Room8)
draw_text(1200,145,"bullets go through lazer");

if(room== Room9)
	draw_text(200,640,"Brakes: disabled");
	
	if(room== Room14)
	draw_text(900,1050,"hold X to drag a box");
	
	if(room== Room16)
	draw_text(350,320,"if the box is fast enough, it can be lethal to enemies");

	
	

if(keyboard_check(vk_anykey) || mouse_check_button(mb_any) ){

}
if(room== Menu)
	draw_text(oLevelButton.x,oLevelButton.y,"Levels");

if(room==Levels1){
	draw_text(oLevel1.x,oLevel1.y, "1")
	draw_text(oLevel2.x,oLevel2.y, "2")
	draw_text(oLevel3.x,oLevel3.y, "3")
	draw_text(oLevel4.x,oLevel4.y, "4")
	draw_text(oLevel5.x,oLevel5.y, "5")
	draw_text(oLevel6.x,oLevel6.y, "6")
	draw_text(oLevel7.x,oLevel7.y, "7")
	draw_text(oLevel8.x,oLevel8.y, "8")
	draw_text(oLevel9.x,oLevel9.y, "9")
	draw_text(oLevel10.x,oLevel10.y, "10")
}

if(room==Levels2){
	draw_text(oLevel11.x,oLevel11.y, "11")
	draw_text(oLevel12.x,oLevel12.y, "12")
	draw_text(oLevel13.x,oLevel13.y, "13")
	draw_text(oLevel14.x,oLevel14.y, "14")
	draw_text(oLevel15.x,oLevel15.y, "15")
	draw_text(oLevel16.x,oLevel16.y, "16")
	draw_text(oLevel17.x,oLevel17.y, "17")
	/*draw_text(oLevel18.x,oLevel18.y, "18")
	draw_text(oLevel19.x,oLevel19.y, "19")
	draw_text(oLevel20.x,oLevel20.y, "20")*/
}



