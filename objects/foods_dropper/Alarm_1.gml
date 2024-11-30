/// @description Insert description here

//choisis la osition du future drop
do {
    next_x_drop = random_range(0 , room_width );
	} until ((next_x_drop > 0 && next_x_drop < room_width - 32) &&  (abs(past_x_drop - next_x_drop) > 100 + (lvl *2) ) );

//le drop d'une food
var new_steak = instance_create_layer(next_x_drop, -64, "FallgamesSpecialObjects", food_object);
make_tainted(new_steak);
past_x_drop = next_x_drop;

bad_lvl +=1;

//modif des states du jeux
alarm[1] = random_range(180 - (bad_lvl*3), 360 - ( bad_lvl*4) ); 
