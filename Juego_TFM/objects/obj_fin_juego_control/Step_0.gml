/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
#region Verificar teclas
reg = keyboard_check_pressed(global.run) or gamepad_button_check_pressed(global.gp, gp_face4);
#endregion

if(reg){
	room_goto(Main);
}