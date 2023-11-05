# id_to_str uses args (id: int)

execute store result storage struct_anim:utils root.args.int.dec_to_base.base int 1 run data get storage struct_anim:utils root.args.id_to_str.alphabit
data modify storage struct_anim:utils root.args.int.dec_to_base.value set from storage struct_anim:utils root.args.id_to_str.id
function struct_anim:utils/int/dec_to_base/run

data modify storage struct_anim:utils root.args.id_to_str.results set value []
data modify storage struct_anim:utils root.args.id_to_str.values set from storage struct_anim:utils root.return.int.dec_to_base.result
function struct_anim:id/str/convert/_step

data modify storage struct_anim:utils root.args.str.concat.values set from storage struct_anim:utils root.args.id_to_str.results
function struct_anim:utils/str/concat/run
data modify storage struct_anim:utils root.return.id_to_str.result set from storage struct_anim:utils root.return.str.concat.result