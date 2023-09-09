/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!audio_is_playing(snd_cancion_4)){
	audio_stop_all();
	audio_play_sound(snd_cancion_4,10,true);	
}
acertijos_completados = false;

global.nivel_inicia = false;

global.active_character = 1;
global.change_character = true;
global.tiene_llave = false;

if(ds_list_size(global.objetivos) == 0){
	global.perro_px = 284;
	global.perro_py = 148;
	global.gato_px = 292;
	global.gato_py = 68;
	global.cuy_px = 348;
	global.cuy_py = 364;
	scr_guardar_partida();
}

scr_cargar_partida();
global.nivel = 3;
scr_cargar_estado_nivel();
eventos_actualizados = false;