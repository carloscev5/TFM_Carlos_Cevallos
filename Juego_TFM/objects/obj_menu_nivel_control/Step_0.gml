/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
#region Verificar teclas
aba = keyboard_check_pressed(global.down) or gamepad_axis_value(global.gp, gp_axislv) > 0.40 or gamepad_button_check(global.gp, gp_padd);
arr = keyboard_check_pressed(global.up) or gamepad_axis_value(global.gp, gp_axislv) < -0.40 or gamepad_button_check(global.gp, gp_padu);
sal = keyboard_check_pressed(global.jump) or gamepad_button_check_pressed(global.gp, gp_face2);
#endregion

if(aba){
	posicion +=1;
	if(posicion == 3){
		posicion = 0;
	}
}
if(arr){
	posicion -=1;
	if(posicion == -1){
		posicion = 2;
	}
}

if(sal){
	if(posicion == 0){
		scr_cargar_partida();
		scr_elegir_nivel(global.nivel);
	}else if(posicion == 1){
		global.esta_nivel = true;
		room_goto(PantallaControles);
	}else{
		room_goto(Main);
	}
}