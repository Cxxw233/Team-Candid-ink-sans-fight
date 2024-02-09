xt = 0;
CrTalk(_lang_text[$ "enemy_text"][$ "fresh"][$ "talk_1"],
_lang_text[$ "enemy_text"][$ "fresh"][$ "talk_2"]);
a = 0;

delta = 0;
layer_create(obj_system.depth - 1, "fx_ct");
fx_ind = fx_create("_filter_vignette");
fx_set_parameter(fx_ind, "g_VignetteSharpness", 0);

col = c_white;
