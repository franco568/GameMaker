///src_get_value(title)

/*
    Function to get saved variables from file
*/

arg1 = argument0;

ini_open('vmh.ini');
var result = ini_read_string( 'saves', arg1, '-1' );
ini_close();

return result;
