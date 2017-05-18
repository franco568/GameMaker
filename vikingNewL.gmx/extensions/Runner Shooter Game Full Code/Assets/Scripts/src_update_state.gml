///src_update_state()

/*
 Function to update state and send achiviment variables to google console
*/

//Player finish the game
global.played = true;
global.playing = false;

//Get actual records
ah = real(src_get_value('ach_hunter'));
am = real(src_get_value('ach_money'));
ad = real(src_get_value('ach_dragon'));
amo = real(src_get_value('ach_monster'));
av = real(src_get_value('ach_viking'));
sc = real(src_get_value('score'));

var access = achievement_login_status() == true and os_is_network_connected();

if access {
    src_post_value('online', 'true');
}


//Save all new records
if ah < 25 {

    ah += 1;
    src_post_value('ach_hunter', string(ah));
  
}

if am < 10000 {

    am += obj_viking.coins;
    if am > 10000{
        am = 10000;
    }
    src_post_value('ach_money', string(am));    
   
}

if ad < 10 {

    ad += obj_viking.dragons;
    if ad > 10{
        ad = 10;
    }

    src_post_value('ach_dragon', string(ad));
    
    
}

if amo < 100 {

    amo += obj_viking.monsters;
    
    if amo > 100{
        amo = 100;
    }

    src_post_value('ach_monster', string(amo));
  
}

if av < 10 {
    
    if av < obj_control.level{
        av = obj_control.level;
    }
    if av > 10{
        av = 10;
    }

    src_post_value('ach_viking', string(av));
   
}

if sc < obj_viking.coins {
   
    src_post_value('score', string(obj_viking.coins));   
}

//If online and is google play version post all achiviments
if access and obj_persist.google_play_version {
  
 
     if obj_viking.coins > 0{   
        achievement_post_score("your_achiv_code_from_google", obj_viking.coins);
     }

    if av == 10{   
        achievement_post("your_achiv_code_from_google", 100);
    }
    
     src_post_achiv("your_achiv_code_from_google", obj_viking.monsters);
     src_post_achiv("your_achiv_code_from_google", obj_viking.dragons);
     src_post_achiv("your_achiv_code_from_google", obj_viking.coins);
     src_post_achiv("your_achiv_code_from_google", 1); 
    
}