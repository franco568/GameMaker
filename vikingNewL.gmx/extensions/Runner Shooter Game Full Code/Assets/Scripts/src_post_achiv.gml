///src_post_achiv(name, value)

/* Posts achiviment*/

var name = argument0;
var value = argument1;

if value > 0 {
    achievement_increment(name, value);
}