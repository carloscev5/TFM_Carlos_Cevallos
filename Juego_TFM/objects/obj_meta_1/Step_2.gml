/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(personajes_meta == 3 && ds_list_find_index(global.objetivos, 8) >= 0){
	room_goto(Nivel2);
	global.nivel = 2;
	ds_list_clear(global.objetivos);
	global.tiene_llave = false;
	scr_guardar_partida();
}
