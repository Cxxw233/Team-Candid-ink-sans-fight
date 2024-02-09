// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function p3_dye_set(){
if file_exists("dye"){
var f = file_bin_open("dye",0);
var ds = file_bin_read_byte(f);
global.dye[0] = 1
global.dye[1] = floor((ds / power(2,8)))//floor((ds mod power(2,9))/power(2,8))
global.dye[2] = floor((ds mod power(2,8))/power(2,7))
global.dye[3] = floor((ds mod power(2,7))/power(2,6))
global.dye[4] = floor((ds mod power(2,6))/power(2,5))
global.dye[5] = floor((ds mod power(2,5))/power(2,4))
global.dye[6] = floor((ds mod power(2,4))/power(2,3))
global.dye[7] = floor((ds mod power(2,3))/power(2,2))
global.dye[8] = floor((ds mod power(2,2))/power(2,1))
file_bin_close(f);
}
}