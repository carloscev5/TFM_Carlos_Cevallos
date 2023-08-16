/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_destroy();
ds_list_add(global.objetivos, 9);	
global.tiene_llave = true;
audio_play_sound(snd_boton, 10, false);
audio_play_sound(snd_recoger_llave, 10, false);
scr_guardar_partida();