# int.dec_to_base uses args (value: int, base: int)
# returns result
execute store result score #int.dec_to_base.value struct_anim.int run data get storage struct_anim:utils root.args.int.dec_to_base.value
execute if score #int.dec_to_base.value struct_anim.int matches ..0 store result score #int.dec_to_base.value struct_anim.int run data get storage struct_anim:utils root.args.int.dec_to_base.value -1
execute store result score #int.dec_to_base.base struct_anim.int run data get storage struct_anim:utils root.args.int.dec_to_base.base

data modify storage struct_anim:utils root.return.int.dec_to_base.result set value []
function struct_anim:utils/int/dec_to_base/step
