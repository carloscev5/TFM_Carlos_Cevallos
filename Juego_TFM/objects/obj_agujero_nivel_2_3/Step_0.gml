/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(global.posicion_raton_gordo == 1){
	var perro = collision_rectangle(x+distancia,y,x+sprite_width+distancia,y+sprite_height,obj_perro,false,false);
	if(perro){
		if(!perro.ld && perro.esta_ladrando){
			
			if(ds_list_find_index(global.objetivos, 6) == -1){
				global.posicion_raton_gordo = 3;
				scr_guardar_partida();
			}else{
				if(ds_list_find_index(global.objetivos,7) == -1){
					ds_list_add(global.objetivos, 7);
					scr_guardar_partida();
					alarm[0] = room_speed*3;
					alarm[1] = room_speed*5;
				}
			}
			
			
		}
	}
}