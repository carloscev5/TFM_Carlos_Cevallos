/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
x = obj_serpiente.x-10;
y = obj_serpiente.y-110;

if(ds_list_find_index(global.objetivos, 2) == -1){
	if(obj_serpiente.esta_quieto){
		if(x > 1860){
			sprite_index = spr_serpiente_quieta_cortada;
		}else{
			sprite_index = spr_serpiente_quieta;	
		}
		if(obj_serpiente.x == 2120
		&& obj_serpiente.xstart == 2120){
			sprite_index = spr_serpiente_metida;	
		}
	}else{
		if(x > 1860){
			sprite_index = spr_serpiente_moviendose_cortada;
		}else{
			sprite_index = spr_serpiente_moviendose;	
		}
	}	
}