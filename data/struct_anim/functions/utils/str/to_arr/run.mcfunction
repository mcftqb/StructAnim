# str.to_arr uses args (value: str, size: int = 1)
# returns result : str[]

data modify storage struct_anim:utils root.ctx.str.to_arr.size set from storage struct_anim:utils root.args.str.to_arr.size
execute unless data storage struct_anim:utils root.args.str.to_arr.size run data modify storage struct_anim:utils root.ctx.str.to_arr.size set value 1
execute store result score #str.to_arr.slice_size struct_anim.int run data get storage struct_anim:utils root.ctx.str.to_arr.size
data remove storage struct_anim:utils root.args.str.to_arr.size
data modify storage struct_anim:utils root.return.str.to_arr.result set value []
function struct_anim:utils/str/to_arr/_step with storage struct_anim:utils root.ctx.str.to_arr