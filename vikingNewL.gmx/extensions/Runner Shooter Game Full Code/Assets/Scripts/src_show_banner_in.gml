///src_show_banner_in(force)

/*Function to show a banner to player*/


//if force show a banner direct
var force = argument0;

/*
    REMOVE THE COMMENTS IF YOUR ARE USING THE AD NETWORKS(SEE OBJ_PERSIST)

//Keep a counter to show a banner every 3 games
value_banner = real(src_get_value('banner_count'));

//Not used now, but you can use this variable to show a video one time day
show_video = src_get_value('show_video');
value_banner += 1;

//If player play 3 times or force banner
if value_banner > 3 or force {

    if !force{
       src_post_value('banner_count', '1');
    }
    if os_type == os_android or os_type == os_ios{
    
        //If Adbudduz is ready, show adbuddiz intertitial
        if AdBuddizExt_IsReady() == 'Ready'{
            AdBuddizExt_ShowAd();
            
            //ellse show admob
        }else{
            GoogleMobileAds_ShowInterstitial();
            GoogleMobileAds_LoadInterstitial();
        }
    }
    
    
}else{
//save banner count, this variable is saved becausa a player
//can return to play a game another time and we need show a banner to monetize our game
    src_post_value('banner_count', string(value_banner));
}
*/