///src_post_all_achivs()

/*Fcuntion to post/update all achiviments of player*/

ah = real(src_get_value('ach_hunter'));
am = real(src_get_value('ach_money'));
ad = real(src_get_value('ach_dragon'));
amo = real(src_get_value('ach_monster'));
av = real(src_get_value('ach_viking'));
sc = real(src_get_value('score'));

src_post_achiv("your_achiv_code_from_google", ah);
src_post_achiv("your_achiv_code_from_google", am);
src_post_achiv("your_achiv_code_from_google", ad);
src_post_achiv("your_achiv_code_from_google", amo);

if av >= 10 {
    achievement_post("your_achiv_code_from_google", 100);
}

if sc > 0 {
    achievement_post_score("your_achiv_code_from_google", sc);
}
    
