/// @description Insert description here
// You can write your code in this editor
if(global.active_hp > global.max_hp){
	global.active_hp = global.max_hp;
}

if(global.active_hp < 0){
	global.active_hp = 0;
}