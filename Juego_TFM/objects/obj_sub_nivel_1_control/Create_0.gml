/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
audio_stop_all();
acertijos_completados = false;

if(ds_list_find_index(global.objetivos, 8) >= 0 ){
	if(ds_list_find_index(global.objetivos, 9) == -1){
		ds_list_add(global.objetivos, 9);
		scr_guardar_partida();
	}
}

scr_cargar_partida();
global.nivel = 12;
scr_cargar_estado_sub_nivel();
eventos_actualizados = false;
se_rompe_plataforma = false;
estan_dos = false;
obj_boton_jaula_sn1_2.x = -100;
obj_ratona_1.y = 222;