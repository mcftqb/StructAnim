data modify storage struct_anim:utils root.ctx.array_select set from storage struct_anim:animations root.ctx.array_select.animators
data modify storage struct_anim:utils root.ctx.array_select.filter.controller.x set from block ~ ~ ~ x
data modify storage struct_anim:utils root.ctx.array_select.filter.controller.y set from block ~ ~ ~ y
data modify storage struct_anim:utils root.ctx.array_select.filter.controller.z set from block ~ ~ ~ z
data modify storage struct_anim:utils root.ctx.array_select.filter.controller.Dimension set from entity @s Dimension
function struct_anim:utils/array/select with storage struct_anim:utils root.ctx.array_select

data modify storage struct_anim:utils root.args.select_animator.animator set from storage struct_anim:animations root.animators[-1].id