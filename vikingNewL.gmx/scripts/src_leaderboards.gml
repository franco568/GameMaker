///src_leaderboards()

/*
    Function to show leadboards or achiviments of player
*/

//1= leadboards
//0= achiviments
var arg = argument0;


if (achievement_login_status() == false and os_is_network_connected())
{
    lead_login = true;
    achievement_login();
    
}
else
{
     if arg == 1 {
          achievement_show_leaderboards();  
     }else{
          achievement_show_achievements();
     }
   
}
