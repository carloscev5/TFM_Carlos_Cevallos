/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if keyboard_check_pressed(ord("C"))
{
    screen_save(working_directory + "Test2.png")
}

if keyboard_check_pressed(vk_escape)
{
    room_goto(Main);
}



if keyboard_check_pressed(ord("R")) or gamepad_button_check_pressed(global.gp, gp_select){
	audio_stop_all();
	room_restart();
}

#region Quinto Obstaculo
if(!se_rompe_plataforma){

	var x_aux1 = (obj_cuy_sub_nivel.x - 35);
	var x_aux2 = (obj_cuy_sub_nivel.x + 35);
	var y_aux1 = (obj_cuy_sub_nivel.y);
	var y_aux2 = (obj_cuy_sub_nivel.y + obj_cuy_sub_nivel.sprite_height);
	
	var x_aux12 = (obj_ratona_1.x - 125);
	var x_aux22 = (obj_ratona_1.x + 125);
	var y_aux12 = (obj_ratona_1.y);
	var y_aux22 = (obj_ratona_1.y + obj_ratona_1.sprite_height);
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
		audio_play_sound(snd_romper_piso_madera, 10, false);
		ds_list_add(global.objetivos, 6);		
		scr_guardar_partida();
	}
		
}
#endregion
