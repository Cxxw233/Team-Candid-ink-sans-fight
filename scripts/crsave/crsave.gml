///@arg Fname,sec,key,text
function crsave(){
ini_open(argument[0])
ini_write_string(argument[1],argument[2],base64_encode(argument[3]))
ini_close()


}

function lang_save_quick_write(str,path="savedata.ini",section="System",key="lang"){
	ini_open(path);
	ini_write_string(section,key,str);
	ini_close();
	
	return;
};

function lang_load_quick(defaults="undefined",path="savedata.ini",section="System",key="lang"){
	ini_open(path);
	var back=ini_read_string(section,key,defaults);
	ini_close();
	
	return back;
};