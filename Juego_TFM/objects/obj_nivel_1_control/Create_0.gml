/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
acertijos_completados = false;

global.nivel_inicia = false;
global.active_character = 1;
global.change_character = true;

global.perro_px = 440;
global.perro_py = 1364;
global.gato_px = 4340;
global.gato_py = 900;
global.cuy_px = 4236;
global.cuy_py = 2350;
global.cuy_sub_nivel_px = 192;
global.cuy_sub_nivel_py = 686;

scr_cargar_partida();
global.nivel = 1;
scr_cargar_estado_nivel();
eventos_actualizados = false;
jaula_techo.x = -1000;