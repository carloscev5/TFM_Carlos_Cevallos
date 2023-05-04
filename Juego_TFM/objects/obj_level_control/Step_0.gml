/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if keyboard_check_pressed(ord("R")) or gamepad_button_check_pressed(global.gp, gp_select){
	audio_stop_all();
	room_restart();
}

if keyboard_check_pressed(ord("I")){
	global.active_character++;
	if(global.active_character == 3){
		
		global.active_character = 1;
		
	}
	
}