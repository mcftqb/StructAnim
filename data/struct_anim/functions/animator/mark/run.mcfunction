# uses selected animator
execute align xyz positioned ~.5 ~.5 ~.5 unless entity @e[type=marker,tag=struct_anim_animation_controller,limit=1,distance=..0.51] summon marker run function struct_anim:animator/mark/_mark
