/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(global.active_character == 2){
	
		if(!global.change_character){
		
	
	
	#region Verificar teclas
der = keyboard_check(global.right) or gamepad_axis_value(global.gp, gp_axislh) > 0.25 or gamepad_button_check(global.gp, gp_padr);
izq = keyboard_check(global.left) or gamepad_axis_value(global.gp, gp_axislh) < -0.25 or gamepad_button_check(global.gp, gp_padl);
der_pre = keyboard_check_pressed(global.right) or gamepad_axis_value(global.gp, gp_axislh) > 0.25 or gamepad_button_check_pressed(global.gp, gp_padr);
izq_pre = keyboard_check_pressed(global.left) or gamepad_axis_value(global.gp, gp_axislh) < -0.25 or gamepad_button_check_pressed(global.gp, gp_padl);
aba = keyboard_check(global.down) or gamepad_axis_value(global.gp, gp_axislv) > 0.40 or gamepad_button_check(global.gp, gp_padd);
arr = keyboard_check(global.up) or gamepad_axis_value(global.gp, gp_axislv) < -0.40 or gamepad_button_check(global.gp, gp_padu);
sal = keyboard_check_pressed(global.jump) or gamepad_button_check_pressed(global.gp, gp_face2) or gamepad_button_check_pressed(global.gp, gp_face1); 
corr = keyboard_check(global.run) or gamepad_button_check(global.gp, gp_face4) or gamepad_button_check(global.gp, gp_face3); 
nsal = keyboard_check_released(global.jump) or gamepad_button_check_released(global.gp, gp_face2) or gamepad_button_check_released(global.gp, gp_face1); 
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
	
	sprite_index = spr_gato_walk;
	
#endregion



#region Salto del personaje
	if sal && (!place_free(x, y+1)){
		vspeed = -salto;
	}
#endregion

#region Cambio de sprite cuando personaje salta y cae
		if saltando{

			sprite_index = spr_gato_jump;
		}

		if caer{

			if vspeed <= 2 && vspeed >= -2{
				
				
				sprite_index = spr_gato_jump_med;
				
			}else{
	
				sprite_index = spr_gato_fall;
	
			}
			
		}
		#endregion

#region Personaje parado
	if ((gravity == 0) && ((izq && der) || (!izq && !der && !aba && !arr) || 
	(izq && place_meeting(x-vel, y,obj_floor)) 

	|| (der && place_meeting(x+vel, y,obj_floor)))){

		sprite_index = spr_gato_idle;
		

	}
	#endregion 




	
}else{
	
	global.change_character = false;
	image_blend = c_white;
	depth = -1;
	
	
}


	
}else{

image_blend = c_gray;
depth = 1;
sprite_index = spr_gato_idle;
	
}


