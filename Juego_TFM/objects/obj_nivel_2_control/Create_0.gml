/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!audio_is_playing(snd_cancion_3)){
	audio_stop_all();
	audio_play_sound(snd_cancion_3,10,true);	
}
acertijos_completados = false;

global.nivel_inicia = false;

global.active_character = 1;
global.change_character = true;
global.tiene_llave = false;

if(ds_list_size(global.objetivos) == 0){
	global.perro_px = 196;
	global.perro_py = 2132;
	global.gato_px = 324;
	global.gato_py = 2052;
	global.cuy_px = 316;
	global.cuy_py = 2350;
	global.cuy_sub_nivel_px = 192;
	global.cuy_sub_nivel_py = 686;
	scr_guardar_partida();
}

scr_cargar_partida();
global.nivel = 2;
scr_cargar_estado_nivel();
eventos_actualizados = false;