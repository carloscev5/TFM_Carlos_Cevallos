// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_cargar_estado_nivel(){
	obj_perro.x = global.perro_px;
	obj_perro.y = global.perro_py;
	obj_gato.x = global.gato_px;
	obj_gato.y = global.gato_py;
	obj_cuy.x = global.cuy_px;
	obj_cuy.y = global.cuy_py;
	scr_guardar_partida();
}