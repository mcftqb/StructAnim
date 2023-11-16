# action_stick.action.select uses args (num: int)
function struct_anim:action_stick/action/select/prefill
data modify storage struct_anim:utils root.ctx.array_select.filter.num set from storage struct_anim:utils root.args.action_stick.action.select.num
function struct_anim:utils/array/select with storage struct_anim:utils root.ctx.array_select