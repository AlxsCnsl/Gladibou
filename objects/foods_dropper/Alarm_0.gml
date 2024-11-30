/// @description Insert description here

//choisis la osition du future drop
do {
    next_x_drop = random_range(past_x_drop - scattering , past_x_drop + scattering );
	} until ((next_x_drop > 0 && next_x_drop < room_width - 32) &&  (abs(past_x_drop - next_x_drop) > 150 + (lvl * 2) ) );

//le drop d'une food
var new_steak = instance_create_layer(next_x_drop, -64, "FallgamesSpecialObjects", food_object);
past_x_drop = next_x_drop;
drop_number += 1;

//augmentation du niveaux
lvl =  drop_number;

if(lvl> 60){
	lvl = 60
}
//modif des states du jeux
scattering = 300 + (5 * lvl) ;
alarm[0] = random_range(90 - lvl, 180 - (2 * lvl) ); 
