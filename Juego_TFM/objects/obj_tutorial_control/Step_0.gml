/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if keyboard_check_pressed(ord("N"))
{
    room_goto(Main);
}

if keyboard_check_pressed(ord("R")) or gamepad_button_check_pressed(global.gp, gp_select){
	audio_stop_all();
	room_restart();
}

if keyboard_check_pressed(ord("I")){
	
	if(!obj_gato.caer && !obj_gato.saltando &&
	!obj_perro.caer && !obj_perro.saltando){
		if(global.active_character == 1){
			obj_perro.esta_ladrando = false;
		}
		global.active_character++;
		global.change_character = true;
	
		if(global.active_character == 4){	
			global.active_character = 1;	
		}
	}
}
