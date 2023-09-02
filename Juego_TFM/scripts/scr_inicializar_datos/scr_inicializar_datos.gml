// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_inicializar_datos(){
	
	global.nivel = 0;
	
	global.esta_nivel = false;
	global.partida = 1;
	
	global.perro_px = 0;
	global.perro_py = 0;
	global.gato_px = 0;
	global.gato_py = 0;
	global.cuy_px = 0;
	global.cuy_py = 0;
	global.cuy_sub_nivel_px = 0;
	global.cuy_sub_nivel_py = 0;
	
	global.active_character = 1;
	global.change_character = false;
	global.nivel_inicia = false;
	global.tiene_llave = false;
	
	global.mensaje_perder = "";
	
	global.objetivos  = ds_list_create();
	
	global.posicion_raton_gordo = 1;
	global.gato_en_agujero_raton_gordo = false;

}