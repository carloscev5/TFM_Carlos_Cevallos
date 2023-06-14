/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(global.active_character == 1){
	
	if(!global.change_character && global.nivel_inicia && !esta_ladrando){
		
	

#region Verificar teclas
der = keyboard_check(global.right) or gamepad_axis_value(global.gp, gp_axislh) > 0.25 or gamepad_button_check(global.gp, gp_padr);
izq = keyboard_check(global.left) or gamepad_axis_value(global.gp, gp_axislh) < -0.25 or gamepad_button_check(global.gp, gp_padl);
der_pre = keyboard_check_pressed(global.right) or gamepad_axis_value(global.gp, gp_axislh) > 0.25 or gamepad_button_check_pressed(global.gp, gp_padr);
izq_pre = keyboard_check_pressed(global.left) or gamepad_axis_value(global.gp, gp_axislh) < -0.25 or gamepad_button_check_pressed(global.gp, gp_padl);
aba = keyboard_check(global.down) or gamepad_axis_value(global.gp, gp_axislv) > 0.40 or gamepad_button_check(global.gp, gp_padd);
arr = keyboard_check(global.up) or gamepad_axis_value(global.gp, gp_axislv) < -0.40 or gamepad_button_check(global.gp, gp_padu);
sal = keyboard_check_pressed(global.jump) or gamepad_button_check_pressed(global.gp, gp_face2);
corr = keyboard_check(global.run) or gamepad_button_check(global.gp, gp_face4);
nsal = keyboard_check_released(global.jump) or gamepad_button_check_released(global.gp, gp_face2);
lad = keyboard_check_pressed(global.special) or gamepad_button_check_pressed(global.gp, gp_face3);
#endregion



#region Gravedad
if place_free(x, y+1){
	gravity = 2;
}else{
	gravity = 0;
}
if vspeed >= 32 {vspeed = 32;}
#endregion 

#region Verificar si cae 
if vspeed >= 0 && place_free(x, y+1){

	caer = true;
	
}else{

	caer = false;
	
}
#endregion

#region Verificar si el personaje esta saltando
if vspeed < 0{

	saltando = true;
	
}else{

	saltando = false;
	
}
#endregion

#region Cambio direccion
if der_pre || der{
			
	ld = true;
			
}
if izq_pre || izq{
		
	ld = false;
			
}
#endregion

#region Caminar y correr


	
	if der && !izq && place_free(x+vel, y){
				
		
		
		
		x+= vel;
		


	}

	if izq && !der && place_free(x-vel, y){
				
		x-= vel;
			

	}
	
	if(!corr){
			
		sprite_index = spr_perro_walk;
			
	}else{
			
		sprite_index = spr_perro_run;
			
	}
	
#endregion

#region Salto del personaje
	if sal && (!place_free(x, y+1)){
		vspeed = -salto;
	}
#endregion

#region Cambiar velocidad y salto
	if !saltando && !caer{
		if corr {
		
			if !esta_corriendo{
			
				vel = vmed;
				esta_corriendo = true;
			
			}
				
			if vel > vmax{
				
				vel = vmax;
					
			}
		
			if vel < vmax && (izq || der){
		
				vel += 1;
			
			}
		
		}
		
		if !corr || (ld && izq) || (!ld && der) || (!izq && !der){
	
			vel = vi;
			esta_corriendo = false;
		
		}
	}else{
			
		if vel >= vmed{
			if ld && !der && izq{
				vel -= 2;
			}
			if !ld && der && !izq{
	
				vel -= 2;
			}
		}else if vel >= vi{
			if ld && !der && izq{
				vel -= 2;
			}
			if !ld && der && !izq{
				vel -= 2;
			}
			esta_corriendo = false;
		}else{
			vel = vi;	
		}
	}
	if corr{
		salto = 40;
	}else{
		salto = 36;
	}
#endregion

#region Personaje abajo
		if aba && !der && !izq && !saltando && !sal && !caer && !arr{

			vel = vi;
			esta_corriendo = false;
			sprite_index = spr_perro_dig;
	
		}
#endregion

		
#region Cambio de sprite cuando personaje salta y cae
		if saltando{

			sprite_index = spr_perro_jump;
		}

		if caer{

			if vspeed <= 2 && vspeed >= -2{
				
				
				sprite_index = spr_perro_jump_med;
				
			}else{
	
				sprite_index = spr_perro_fall;
	
			}
			
		}
		#endregion

#region Personaje parado
	if ((gravity == 0) && ((izq && der) || (!izq && !der && !aba) || 
	(izq && place_meeting(x-vel, y,obj_floor)) 

	|| (der && place_meeting(x+vel, y,obj_floor)))){

		sprite_index = spr_perro_idle;
		

	}
	#endregion 

#region Ladrar
if(lad){
	sprite_index = spr_perro_bark;
	esta_ladrando = true;
}
#endregion



}else{

	global.change_character = false;
	image_blend = c_white;
	depth = -1;
	
	
}


}else{
	
	sprite_index = spr_perro_idle;
	image_blend = c_gray;
	depth = 1;

	
}

		
