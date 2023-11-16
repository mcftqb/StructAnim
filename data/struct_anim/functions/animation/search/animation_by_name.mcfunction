# get_animation uses args (id: str)
function struct_anim:animation/search/prefill
data modify storage struct_anim:utils root.ctx.array_select.filter.animation set from storage struct_anim:utils root.args.get_animation.id
function struct_anim:utils/array/select with storage struct_anim:utils root.ctx.array_select
