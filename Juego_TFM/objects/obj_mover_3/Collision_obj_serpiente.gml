/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
instance_destroy(obj_serpiente_2);
ds_list_add(global.objetivos, 6);	
scr_guardar_partida();
instance_create_layer(x,y-300,"Arte",obj_caja_rota);
audio_play_sound(snd_caja_rota, 10, false);
instance_destroy();
