/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(personajes_meta == 3 && global.tiene_llave){
	room_goto(Nivel3);
	global.nivel = 3;
	ds_list_clear(global.objetivos);
	global.tiene_llave = false;
	scr_guardar_partida();
}
