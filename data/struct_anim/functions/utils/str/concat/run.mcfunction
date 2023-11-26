# str.concat uses args (values: any[], separator: str = "")
# returns in result

data modify storage struct_anim:utils root.ctx.str.concat.result set from storage struct_anim:utils root.args.str.concat.values[0]
data remove storage struct_anim:utils root.args.str.concat.values[0]
data modify storage struct_anim:utils root.ctx.str.concat.separator set from storage struct_anim:utils root.args.str.concat.separator
execute unless data storage struct_anim:utils root.args.str.concat.separator run data modify storage struct_anim:utils root.ctx.str.concat.separator set value ""
data remove storage struct_anim:utils root.args.str.concat.separator
function struct_anim:utils/str/concat/_step
data modify storage struct_anim:utils root.return.str.concat.result set from storage struct_anim:utils root.ctx.str.concat.result
