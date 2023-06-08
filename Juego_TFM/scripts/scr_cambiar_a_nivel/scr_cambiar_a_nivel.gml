// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_cambiar_a_nivel(nivel){
	
	global.cuy_sub_nivel_px = obj_cuy_sub_nivel.x;
	global.cuy_sub_nivel_py = obj_cuy_sub_nivel.y;
	scr_guardar_partida();
	room_goto(nivel);

}