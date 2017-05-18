///scr_over(x, y, sprite)


//This function help to know when a touch is over a sprite(see offset)
xX = argument0;
yY = argument1;
spr_scr  = argument2;

x1 = (xX) - sprite_get_width(spr_scr)/2;
y1 = (yY) - sprite_get_height(spr_scr)/2;
x2 = (xX) + sprite_get_width(spr_scr)/2;
y2 = (yY) + sprite_get_height(spr_scr)/2;
  
      
if mouse_x > x1 and mouse_x < x2
    and mouse_y > y1 and mouse_y < y2{
   return true;
}else{
   return false;
}