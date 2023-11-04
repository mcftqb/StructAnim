# action_stick.action.select uses args (num: int)
data modify storage struct_anim:utils root.ctx.array_select set value {storage: "struct_anim:dynbook", path: "root.action_stick.actions", filter: {}}
data modify storage struct_anim:utils root.ctx.array_select.filter.num set from storage struct_anim:utils root.args.action_stick.action.select.num
function struct_anim:utils/array/select with storage struct_anim:utils root.ctx.array_select