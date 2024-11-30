/// @description Insert description here
// You can write your code in this editor
x =1408;
y = 544;

global.lvl = 1;

global.max_hp = 97 + (global.lvl * 3);
global.active_hp = global.max_hp;

global.atk_power = 10 * global.lvl;

global.accuracy = 80;
sound_launch = 0;

//les sond
global.fakesteak_eat_snds = [sfx_fakesteak_eat_001, sfx_fakesteak_eat_002, sfx_fakesteak_eat_003, sfx_fakesteak_eat_004];
global.steak_eat_snds = [sfx_steak_eat_001, sfx_steak_eat_002, sfx_steak_eat_003, ];
global.steak_crash_snds = [sfx_steak_crash_001, sfx_steak_crash_002, sfx_steak_crash_003, sfx_steak_crash_004];
global.slime_jump_snds = [slime_jump_001, slime_jump_002 , slime_jump_003];