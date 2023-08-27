/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ds_list_add(global.objetivos, 7);
scr_guardar_partida();
instance_destroy(obj_piso_electrocutado_2);
audio_play_sound(snd_apagar_electricidad, 10, false);
instance_destroy();