data modify storage struct_anim:utils root.ctx.array_select set from storage struct_anim:animations root.ctx.array_select.animators

function struct_anim:animator/get_block_pos
data modify storage struct_anim:utils root.ctx.array_select.filter.controller set from storage struct_anim:utils root.return.get_block_pos

function struct_anim:utils/array/select with storage struct_anim:utils root.ctx.array_select

data modify storage struct_anim:utils root.args.select_animator.animator set from storage struct_anim:animations root.animators[-1].id