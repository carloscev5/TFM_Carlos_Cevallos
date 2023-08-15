/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if keyboard_check_pressed(ord("C"))
{
    screen_save(working_directory + "Test.png")
}

if keyboard_check_pressed(vk_escape)
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


#region Tercer Obstaculo
	if(obj_perro.esta_ladrando && ds_list_find_index(global.objetivos, 4) == -1){
		var x_aux1 = (obj_perro.x - 65);
		var x_aux2 = (obj_perro.x + 65);
		var y_aux1 = (obj_perro.y);
		var y_aux2 = (obj_perro.y + obj_perro.sprite_height);
		if(!obj_perro.ld){
			if(collision_rectangle(x_aux1 - 500, y_aux1, x_aux2, y_aux2, cristal_3,false, true)){	
			instance_destroy(cristal_3);
			ds_list_add(global.objetivos, 4);	
			scr_guardar_partida();
		}
	}
}
#endregion