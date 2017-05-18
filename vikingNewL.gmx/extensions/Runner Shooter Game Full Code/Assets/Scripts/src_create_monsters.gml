///src_create_monsters(time_game)


//This function create monster based on level, more level reached = more monsters
//Get the all time playing in second
time_tmp = argument0;


//Divide the time for 20, every 20 second increase a level
level_tmp = time_tmp/20;

if level_tmp > 1 and level_tmp < 10 {
    //Avoid double results
    level_tmp = real(string_char_at(string(level_tmp), 1));
}else if level_tmp < 1{
    level_tmp = 1;
}else{
//Max level is 10
    level_tmp = 10;
}


//for each level create a monster in random position
repeat(level_tmp){

    posY = irandom_range(240, 758);   
    posX = room_width + irandom_range(50, 200);
    instance_create(posX, posY, obj_monster);
}

return level_tmp;