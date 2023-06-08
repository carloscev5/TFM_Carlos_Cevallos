/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
acertijos_completados = false;

global.nivel_inicia = false;
global.active_character = 1;
global.change_character = true;

global.perro_px = 384;
global.perro_py = 1152;
global.gato_px = 4352;
global.gato_py = 768;
global.cuy_px = 4224;
global.cuy_py = 1920;
global.cuy_sub_nivel_px = 128;
global.cuy_sub_nivel_py = 256;

scr_cargar_partida();
global.nivel = 1;
scr_cargar_estado_nivel();
eventos_actualizados = false;