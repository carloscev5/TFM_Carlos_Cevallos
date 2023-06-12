/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if keyboard_check_pressed(ord("R")) or gamepad_button_check_pressed(global.gp, gp_select){
	audio_stop_all();
	room_restart();
}

#region Quinto Obstaculo
if(!se_rompe_plataforma){

	var x_aux1 = (obj_cuy_sub_nivel.x - 35);
	var x_aux2 = (obj_cuy_sub_nivel.x + 35);
	var y_aux1 = (obj_cuy_sub_nivel.y + 440);
	var y_aux2 = (obj_cuy_sub_nivel.y + 512);
	
	var x_aux12 = (obj_ratona_1.x - 35);
	var x_aux22 = (obj_ratona_1.x + 35);
	var y_aux12 = (obj_ratona_1.y + 440);
	var y_aux22 = (obj_ratona_1.y + 512);
	if(collision_rectangle(x_aux1, y_aux1, x_aux2, y_aux2+100, piso_fragil,false, true)
	&& collision_rectangle(x_aux12, y_aux12, x_aux22, y_aux22+100, piso_fragil,false, true)){
	
		if(!estan_dos){
			estan_dos = true;
			alarm[0] = room_speed*1;
		}

	}else{
	
		estan_dos = false;
		
	}
}else{

	if(instance_exists(piso_fragil)){	
		instance_destroy(piso_fragil);
		ds_list_add(global.objetivos, 5);		
		scr_guardar_partida();
	}
		
}
#endregion

#region Sexto Obstaculo
if(instance_exists(obj_boton_jaula)){
	var x_aux1 = (obj_cuy_sub_nivel.x - 35);
	var x_aux2 = (obj_cuy_sub_nivel.x + 35);
	var y_aux1 = (obj_cuy_sub_nivel.y + 440);
	var y_aux2 = (obj_cuy_sub_nivel.y + 512);
	if(collision_rectangle(x_aux1, y_aux1, x_aux2, y_aux2+100, obj_boton_jaula,false, true)){
	
		instance_destroy(obj_boton_jaula);
		ds_list_add(global.objetivos, 6);		
		scr_guardar_partida();

	}
}
#endregion