/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(personajes_meta == 3 && global.tiene_llave){
	room_goto(Nivel2);
	global.nivel = 2;
	ds_list_clear(global.objetivos);
	scr_guardar_partida();
}
