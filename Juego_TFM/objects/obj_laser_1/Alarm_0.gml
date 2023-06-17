/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(visible){
	visible = false;
	if(self.name == "laser_1"){
		laser_2.visible = true;
	}else{
		laser_1.visible = true;
	}	

}else{
	visible = true;
	if(self.name == "laser_1"){
		laser_2.visible = false;
	}else{
		laser_1.visible = false;
	}	
}
audio_play_sound(snd_laser, 10, false);
puede_cambiar = true;
