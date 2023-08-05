/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
audio_stop_all();
acertijos_completados = false;

if(ds_list_find_index(global.objetivos, 7) >= 0 ){
	if(ds_list_find_index(global.objetivos, 8) == -1){
		ds_list_add(global.objetivos, 8);
		obj_cuy_sub_nivel.x = 128;
		obj_cuy_sub_nivel.y = 750;
		scr_guardar_partida();
	}
}

scr_cargar_partida();
global.nivel = 22;
scr_cargar_estado_sub_nivel();
eventos_actualizados = false;