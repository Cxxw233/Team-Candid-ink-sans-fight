///@arg id,name;
function CrSetItemName(){
	CrItemInit().tem[argument[0]]=string(argument[1]);
	return CrItemInit().tem[argument[0]];
}