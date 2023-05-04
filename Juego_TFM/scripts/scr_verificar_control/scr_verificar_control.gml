// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_verificar_control(){
	global.gp = 0;
	var gp_num = gamepad_get_device_count();
	for (var i = 0; i < gp_num; i++;)
	{
		if gamepad_is_connected(i){
		
			global.gp = i;
			exit;
		
		}
	}
}