///src_post_value(title, value)

/*
 Function to create a vmh.ini file to save variables e post new variables to be saved
*/
arg1 = argument0;
arg2 = argument1;

ini_open("vmh.ini");
ini_write_string("saves", arg1, arg2);
ini_close();