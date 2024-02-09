/*function CrGetOriginalNameLow(){
	var path=environment_get_variable("%localappdata%");
	if(directory_exists(path)+"\\UNDERTALE"){
		ini_open(path+"\\UNDERTALE");
		var name=ini_read_string("General","Name","CharaA");
		CrSetName(name);
		ini_close();
		delete name;
	}
	delete path;
}*/
function CrOriginalName(){
	if(directory_exists((environment_get_variable("LOCALAPPDATA")+"\\UNDERTALE"))){
        if(file_exists((environment_get_variable("LOCALAPPDATA")+"\\UNDERTALE\\file0"))){
            var file=file_text_open_read((environment_get_variable("LOCALAPPDATA")+"\\UNDERTALE\\file0"));
            CrSetName(string_upper(file_text_read_string(file)));
            file_text_close(file);
            var ch=string_copy(CrGetName(),1,1);
            if(ord(ch)>=160){
                CrSetName("chara");
			}
            if(CrGetName()==""){
                CrSetName("chara");
			}
			delete file;
			return ch;
			delete ch;
    }else{
        //show_message("test3");
        //show_message((environment_get_variable("LOCALAPPDATA")+"\\UNDERTALE"));
    }
	    if(string_length(CrGetName())>6){
	        CrSetName(string_copy(CrGetName(),1,6));
			return CrGetName();
		}
	}
	
}
/*function CrGetOriginalName(){
	if(directory_exists((environment_get_variable("LOCALAPPDATA")+"\\UNDERTALE"))){
        if(file_exists((environment_get_variable("LOCALAPPDATA")+"\\UNDERTALE\\file0"))){
            var file=file_text_open_read((environment_get_variable("LOCALAPPDATA")+"\\UNDERTALE\\file0"));
            return string_upper(file_text_read_string(file));
            file_text_close(file);
			delete file;
		}
	}
}*/