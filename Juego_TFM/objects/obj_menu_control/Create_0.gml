/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!audio_is_playing(snd_cancion_1)){
	audio_stop_all();
	audio_play_sound(snd_cancion_1,10,true);	
}
scr_inicializar_datos();
scr_cargar_controles();
scr_verificar_control();
posicion = 0;
global.esta_nivel = false;