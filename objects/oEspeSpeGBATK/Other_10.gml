/// @description Soul Hurt
if (Colour == 0){
	//show_debug_message("6");
	Player_HurtKR();
}
if (Colour == 1){
	if ((!((battle_soul.x == battle_soul.xprevious && battle_soul.y == battle_soul.yprevious))) && (keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down))){
		Player_HurtKR();
	}
}
if (Colour == 2){
	if ((battle_soul.x == battle_soul.xprevious && battle_soul.y == battle_soul.yprevious) || (!((keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down))))){
		Player_HurtKR();
	}
}









