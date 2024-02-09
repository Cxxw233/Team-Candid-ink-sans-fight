///@arg Fname,type,sec,key
function crread(){
var READ_INI_FILE_NAME_VA_STRING=""
var READ_INI_FILE_NAME_VA_REAL=0
ini_open(argument[0])
if(ini_key_exists(argument[2],argument[3]))
{
if(argument[1]="str")
{
READ_INI_FILE_NAME_VA_STRING=string(base64_decode(ini_read_string(argument[2],argument[3],0)))
}
if(argument[1]="real")

{
READ_INI_FILE_NAME_VA_REAL=real(base64_decode(ini_read_string(argument[2],argument[3],0)))
}
ini_close()
if(argument[1]="str")
{
return READ_INI_FILE_NAME_VA_STRING;//=string(base64_decode(ini_read_string(argument[2],argument[3],1)))
}
if(argument[1]="real")
{
return READ_INI_FILE_NAME_VA_REAL;//=real(base64_decode(ini_read_real(argument[2],argument[3],1)))
}
}
else
{
return (real("0"));
}


}