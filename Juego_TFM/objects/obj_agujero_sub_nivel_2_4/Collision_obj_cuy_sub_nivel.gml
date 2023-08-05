/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(other.puede_entrar_agujero && global.posicion_raton_gordo != 3){
	global.cuy_py = 364;
	global.cuy_px = 2252;
	if(ds_list_find_index(global.objetivos,13) == -1){
		ds_list_add(global.objetivos, 13);
	}
	scr_guardar_partida();
	scr_cambiar_a_nivel(Nivel2)
}

