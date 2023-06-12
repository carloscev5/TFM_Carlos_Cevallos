/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
acertijos_completados = false;


if(ds_list_find_index(global.objetivos, 4) == -1){
	ds_list_add(global.objetivos, 4);
	scr_guardar_partida();
}
scr_cargar_partida();
global.nivel = 12;
scr_cargar_estado_sub_nivel();
eventos_actualizados = false;
se_rompe_plataforma = false;
estan_dos = false;