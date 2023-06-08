// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_guardar_partida(){
	
	switch(global.partida){

		case 1: ini_open("partida1.ini"); break;
		case 2: ini_open("partida2.ini"); break;
		case 3: ini_open("partida3.ini"); break;
		default: ini_open("partida1.ini"); break;
	
	}
	if(instance_exists(obj_perro)){
		global.perro_px = obj_perro.x;
		global.perro_py = obj_perro.y;
		global.gato_px = obj_gato.x;
		global.gato_py = obj_gato.y;
		global.cuy_px = obj_cuy.x;
		global.cuy_py = obj_cuy.y;
	}else{
		global.cuy_sub_nivel_px = obj_cuy_sub_nivel.x;
		global.cuy_sub_nivel_py = obj_cuy_sub_nivel.y;
	}
	ini_write_string("perro", "PX", base64_encode(global.perro_px));
	ini_write_string("perro", "PY", base64_encode(global.perro_py));
	ini_write_string("gato", "PX", base64_encode(global.gato_px));
	ini_write_string("gato", "PY", base64_encode(global.gato_py));
	ini_write_string("cuy", "PX", base64_encode(global.cuy_px));
	ini_write_string("cuy", "PY", base64_encode(global.cuy_py));
	ini_write_string("cuy_sub_nivel", "PX", base64_encode(global.cuy_sub_nivel_px));
	ini_write_string("cuy_sub_nivel", "PY", base64_encode(global.cuy_sub_nivel_py));
	ini_write_string("juego", "nivel", base64_encode(global.nivel));
	ini_write_string("nivel", "objetivos", ds_list_write(global.objetivos));
	ini_close();


}