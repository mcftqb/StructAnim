# Uses selected animation

function struct_anim:animator/selection/prefill
data modify storage struct_anim:utils root.ctx.array_filter set from storage struct_anim:utils root.ctx.array_select
data modify storage struct_anim:utils root.ctx.array_filter.filter.animation set from storage struct_anim:animations root.animations[-1].animation
function struct_anim:utils/array/filter with storage struct_anim:utils root.ctx.array_filter

data modify storage struct_anim:utils root.ctx.fill_animation.block set value "air"

data modify storage struct_anim:utils root.args.animation.delete.values set value []
data modify storage struct_anim:utils root.args.animation.delete.values append from storage struct_anim:utils root.return.array_filter.result[].id
function struct_anim:animation/delete/_delete_instances/_step
