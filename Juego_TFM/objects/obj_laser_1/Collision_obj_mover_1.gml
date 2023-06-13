/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
other.solid = false;
if(!esta_danado){
	if(puede_cambiar){
		if(ds_list_find_index(global.objetivos, 7) == -1){
			ds_list_add(global.objetivos, 7);	
			scr_guardar_partida();
			alarm[0] = room_speed*vel_cambio;
			puede_cambiar = false;
		}
		if(ds_list_find_index(global.objetivos, 9) >= 0){
			laser_1.esta_danado = true;
			laser_2.esta_danado = true;
			if(laser_1.visible){
				laser_2.visible = true;
				laser_1.visible = false;
			}else{
				laser_1.visible = true;
				laser_2.visible = false;
			}
			ds_list_add(global.objetivos, 10);	
			scr_guardar_partida();
		}
		
	}
}