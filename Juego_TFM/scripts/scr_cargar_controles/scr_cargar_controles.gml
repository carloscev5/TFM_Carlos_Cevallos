// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_cargar_controles(){
	global.right = ord("D");
	global.left = ord("A");
	global.up = ord("W");
	global.down = ord("S");
	global.jump = ord("K");
	global.run = ord("J");
	global.interact = ord("I");
	global.quit = vk_escape;
	global.special = ord("L");
}
