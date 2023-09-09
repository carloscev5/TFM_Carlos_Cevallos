/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!audio_is_playing(snd_cancion_3)){
	audio_stop_all();
	audio_play_sound(snd_cancion_3,10,true);	
}
acertijos_completados = false;

scr_cargar_partida();
global.nivel = 22;
scr_cargar_estado_sub_nivel();
eventos_actualizados = false;