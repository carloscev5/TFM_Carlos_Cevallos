/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
#region Verificar teclas
aba = keyboard_check_pressed(global.down) or gamepad_axis_value(global.gp, gp_axislv) > 0.40 or gamepad_button_check(global.gp, gp_padd);
arr = keyboard_check_pressed(global.up) or gamepad_axis_value(global.gp, gp_axislv) < -0.40 or gamepad_button_check(global.gp, gp_padu);
sal = keyboard_check_pressed(global.jump) or gamepad_button_check_pressed(global.gp, gp_face2);
#endregion

if(!partida_seleccionada){
	if(aba){
		posicion +=1;
		if(posicion == 4){
			posicion = 0;
		}
	}
	if(arr){
		posicion -=1;
		if(posicion == -1){
			posicion = 3;
		}
	}
	
	if(sal){
		if(posicion == 0){
			partida_seleccionada = true;
			posicion = 0;
			global.partida = 1;
			if(file_exists("partida1.ini")){
				existe_archivo = true;
			}
		}else if(posicion == 1){
			partida_seleccionada = true;
			posicion = 0;
			if(file_exists("partida2.ini")){
				existe_archivo = true;
			}
			global.partida = 2;
		}else if(posicion == 2){
			partida_seleccionada = true;
			posicion = 0;
			if(file_exists("partida3.ini")){
				existe_archivo = true;
			}
			global.partida = 3;
		}else{
			room_goto(Main);
		}
	
	
	}
	
}else{
	if(existe_archivo){
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
				
				if(global.partida == 1){
					file_delete("partida1.ini")	
				}else if(global.partida == 2){
					file_delete("partida2.ini")	
				}else{
					file_delete("partida3.ini")		
				}
				partida_seleccionada = false;
				posicion = 0;
				existe_archivo = false;
				
			}else{
				partida_seleccionada = false;
				posicion = 0;
				existe_archivo = false;
			}
		}
	
		
	}else{
		if(aba){
			posicion +=1;
			if(posicion == 2){
				posicion = 0;
			}
		}
		if(arr){
			posicion -=1;
			if(posicion == -1){
				posicion = 1;
			}
		}
		
		if(sal){
			if(posicion == 0){
				scr_cargar_partida();
				scr_elegir_nivel(global.nivel);
			}else{
				partida_seleccionada = false;
				posicion = 0;
				existe_archivo = false;
			}
		}
	}
	

	
}

