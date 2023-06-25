/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(personajes_meta == 3 && ds_list_find_index(global.objetivos, 8) >= 0){
	room_goto(Nivel2);
	global.nivel = 2;
	ds_list_clear(global.objetivos);
	global.perro_px = 196;
	global.perro_py = 2132;
	global.gato_px = 324;
	global.gato_py = 2052;
	global.cuy_px = 316;
	global.cuy_py = 2350;
	global.cuy_sub_nivel_px = 192;
	global.cuy_sub_nivel_py = 686;
	global.tiene_llave = false;
	scr_guardar_partida();
}
