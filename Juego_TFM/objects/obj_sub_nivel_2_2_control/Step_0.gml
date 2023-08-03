/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if keyboard_check_pressed(ord("C"))
{
    screen_save(working_directory + "Test2.png")
}

if keyboard_check_pressed(vk_escape)
{
    room_goto(Main);
}

if keyboard_check_pressed(ord("R")) or gamepad_button_check_pressed(global.gp, gp_select){
	audio_stop_all();
	room_restart();
}
