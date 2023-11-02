data modify storage struct_anim:utils root.ctx.array_has set from storage struct_anim:animations root.ctx.array_select.animators

function struct_anim:animator/get_block_pos
data modify storage struct_anim:utils root.ctx.array_has.filter.controller set from storage struct_anim:utils root.return.get_block_pos

function struct_anim:utils/array/has with storage struct_anim:utils root.ctx.array_has
execute unless score #array_select.has_element struct_anim.int matches 1 run kill @s