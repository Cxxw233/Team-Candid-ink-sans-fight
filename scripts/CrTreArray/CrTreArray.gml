///@arg arrayNum*8
function CrTreArray(){
	var i=1;
	repeat(7){
		global.tre[i]=argument[i];
		i++;
	}
	return i;
	delete i;
}