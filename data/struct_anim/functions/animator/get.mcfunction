# get_animator uses args (id: str)
data modify storage struct_anim:utils root.ctx.array_select set value {storage: "struct_anim:animations", path: "root.animators", filter: {}}
data modify storage struct_anim:utils root.ctx.array_select.filter.id set from storage struct_anim:utils root.args.get_animator.id
function struct_anim:utils/array/select with storage struct_anim:utils root.ctx.array_select

