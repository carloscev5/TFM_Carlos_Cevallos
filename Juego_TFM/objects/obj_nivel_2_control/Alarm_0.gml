/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ds_list_add(global.objetivos, 8);
audio_play_sound(snd_cae_objeto, 10, false);
instance_create_layer(2688, 384, "Objects", obj_bolsa);
scr_guardar_partida();