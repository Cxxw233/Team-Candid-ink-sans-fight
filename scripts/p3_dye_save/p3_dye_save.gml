// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function p3_dye_save(){
//没写完，先别用
f = file_bin_open("dye", 1)
ds = ((((((((global.dye[1] * power(2, 8)) + (global.dye[2] * power(2, 7))) + (global.dye[3] * power(2, 6))) + (global.dye[4] * power(2, 5))) + (global.dye[5] * power(2, 4))) + (global.dye[6] * power(2, 3))) + (global.dye[7] * power(2, 2))) + (global.dye[8] * power(2, 1)))
file_bin_write_byte(f, ds)
file_bin_close(f)
}
