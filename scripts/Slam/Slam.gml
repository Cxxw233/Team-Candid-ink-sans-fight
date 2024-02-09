
function Slam(){

}
function crinkss() {
	var (spr) = noone
	if (argument[0]=ink_ss.sdown)
	{
	spr=spr_ink_body_down
	}
	if (argument[0]=ink_ss.sup)
	{
	spr=spr_ink_body_up
	}
	if (argument[0]=ink_ss.sleft)
	{
	spr=spr_ink_body_left
	}
	if (argument[0]=ink_ss.sright)
	{
	spr=spr_ink_body_right
	}

	if(instance_exists(enemy))
	{
	enemy.ss=1
	enemy.DOW=argument[0]
	enemy.spr_body=spr
	}
	delete spr;


}
	
function nothingSlam(){
	var spr=noone;
	switch(argument[0]){
			case ink_ss.sdown:
				spr=sprNothingBodyDown;
		break;
			case ink_ss.sup:
				spr=sprNothingBodyUp;
		break;
			case ink_ss.sleft:
				spr=sprNothingBodyLeft;
		break;
			case ink_ss.sright:
				spr=sprNothingBodyRight;
		break;
	};
	if(instance_exists(enemy_nothing)){
		with(enemy_nothing){
			ss=1;
		    DOW=argument[0];
			spr_body=spr;
		};
	};
	return argument[0];
};
