/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
#region Verificar teclas
aba = keyboard_check_pressed(global.down) or gamepad_axis_value(global.gp, gp_axislv) > 0.40 or gamepad_button_check(global.gp, gp_padd);
arr = keyboard_check_pressed(global.up) or gamepad_axis_value(global.gp, gp_axislv) < -0.40 or gamepad_button_check(global.gp, gp_padu);
sal = keyboard_check_pressed(global.jump) or gamepad_button_check_pressed(global.gp, gp_face2);
#endregion

if(aba || arr){
	if(posicion == 0){
		posicion = 1;
	}else{
		posicion = 0;
	}
}

if(sal){

	if(posicion == 1){
		if(file_exists("partida1.ini")){
			file_delete("partida1.ini")	
		}
	}
	room_goto(SelectorPartida);
	
}