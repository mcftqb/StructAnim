data modify storage struct_anim:utils root.args.id_to_str.all.values append value 0
execute store result storage struct_anim:utils root.args.id_to_str.all.values[-1] int 1 run random value 0..2147483646
data modify storage struct_anim:utils root.args.id_to_str.all.values append value 0
execute store result storage struct_anim:utils root.args.id_to_str.all.values[-1] int 1 run random value 0..2147483646
data modify storage struct_anim:utils root.args.id_to_str.all.values append value 0
execute store result storage struct_anim:utils root.args.id_to_str.all.values[-1] int 1 run random value 0..2147483646
data modify storage struct_anim:utils root.args.id_to_str.all.values append value 0
execute store result storage struct_anim:utils root.args.id_to_str.all.values[-1] int 1 run random value 0..2147483646

function struct_anim:id/str/convert/all
