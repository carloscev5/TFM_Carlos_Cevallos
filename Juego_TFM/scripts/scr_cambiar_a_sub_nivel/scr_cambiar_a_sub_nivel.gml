// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_cambiar_a_sub_nivel(nivel){
	global.perro_px = obj_perro.x;
	global.perro_py = obj_perro.y;
	global.gato_px = obj_gato.x;
	global.gato_py = obj_gato.y;
	global.cuy_px = obj_cuy.x;
	global.cuy_py = obj_cuy.y;
	scr_guardar_partida();
	room_goto(nivel);
}