# str.concat uses args (values: any[])
# returns in result

data modify storage struct_anim:utils root.ctx.str.concat.result set value ""
function struct_anim:utils/str/concat/_step
data modify storage struct_anim:utils root.return.str.concat.result set from storage struct_anim:utils root.ctx.str.concat.result
