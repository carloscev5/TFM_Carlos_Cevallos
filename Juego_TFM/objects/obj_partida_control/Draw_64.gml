/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!partida_seleccionada){
	draw_set_color(c_black);
	draw_rectangle(700, 350, 1200, 850, false);

	draw_set_font(fnt_menu);
	if(posicion == 0){
		draw_set_color(c_white)
	}else{
		draw_set_color(c_gray)
	}
	draw_text(960,440, "Partida 1");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	if(posicion == 1){
		draw_set_color(c_white)
	}else{
		draw_set_color(c_gray)
	}
	draw_text(960,540, "Partida 2");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);	

	if(posicion == 2){
		draw_set_color(c_white)
	}else{
		draw_set_color(c_gray)
	}
	draw_text(960,640, "Partida 3");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);	

	if(posicion == 3){
		draw_set_color(c_white)
	}else{
		draw_set_color(c_gray)
	}
	draw_text(960,740, "Regresar");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);	
}else{
	if(existe_archivo){
		draw_set_color(c_black);
		draw_rectangle(700, 450, 1200, 850, false);

		draw_set_font(fnt_menu);
		if(posicion == 0){
			draw_set_color(c_white)
		}else{
			draw_set_color(c_gray)
		}
		draw_text(960,540, "Continuar");
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);

		if(posicion == 1){
			draw_set_color(c_white)
		}else{
			draw_set_color(c_gray)
		}
		draw_text(960,640, "Eliminar");
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);	

		if(posicion == 2){
			draw_set_color(c_white)
		}else{
			draw_set_color(c_gray)
		}
		draw_text(960,740, "Regresar");
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);	
	}else{
		draw_set_color(c_black);
		draw_rectangle(700, 550, 1200, 850, false);

		draw_set_font(fnt_menu);
		if(posicion == 0){
			draw_set_color(c_white)
		}else{
			draw_set_color(c_gray)
		}
		draw_text(960,640, "Nueva Partida");
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);

		if(posicion == 1){
			draw_set_color(c_white)
		}else{
			draw_set_color(c_gray)
		}
		draw_text(960,740, "Regresar");
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);	

	}
}