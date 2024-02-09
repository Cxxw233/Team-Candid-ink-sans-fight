selected3=0
set=0
next=0
selected=0
xx=0
show_debug=false;
CrOriginalName();

_play_sfx=function(snd=snd_AJ){
	audio_stop_sound(snd);
	audio_play_sound(snd,0,0);
};
 
/*function dot_matrix(vec1, vec2) { // 返回它们的点积
    // 将向量转换为Matrix
    mat1 = matrix_build(1, 3, vec1[0], vec1[1], vec1[2], 0, 0, 0, 0); //
    mat2 = matrix_build(3, 1, vec2[0], vec2[1], vec2[2], 0, 0, 0, 0);
   
    result = matrix_multiply(mat1, mat2); // 进行矩阵乘法
    
    return matrix_get(result); // 提取结果
}*/

/*function dot_method(arr1, arr2) {
    if (array_length_1d(arr1) != array_length_1d(arr2)) { // 检查两个数组是否具有相同的长度
        show_error("Error: The two arrays must have the same length.",false);
        return;
    }
    // 计算点积
    var result = 0;
    for (var i = 0; i < array_length_1d(arr1); i++) {
        result += arr1[i] * arr2[i];
    }
    return result;
}*/



/*function smoothstep_method(_x, a, b) { // 定义一个名为"smoothstep"的函数，实现平滑插值
    t = clamp((_x - a) / (b - a), 0.0, 1.0); // 计算插值参数t
 
    return ( t * t * (3 - 2 * t) ); // 计算平滑插值值
}*/
temp=0;

part_system_destroy(part_warp_line);

//audio_play_sound(snd_rain, 0, true);