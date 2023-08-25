/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
ds_list_add(global.objetivos, 9);
obj_piso_mov_1.vel = obj_piso_mov_1.vel * -0.1;
obj_piso_mov_2.vel = obj_piso_mov_2.vel * -0.1;
audio_play_sound(snd_boton, 10, false);
audio_play_sound(snd_encima_finalizado, 10, false);
scr_guardar_partida();