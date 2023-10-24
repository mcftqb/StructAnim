data modify storage struct_anim:utils root.ctx.array_has set from storage struct_anim:animations root.ctx.array_select.animators
data modify storage struct_anim:utils root.ctx.array_select.filter.controller.x set from block ~ ~ ~ x
data modify storage struct_anim:utils root.ctx.array_select.filter.controller.y set from block ~ ~ ~ y
data modify storage struct_anim:utils root.ctx.array_select.filter.controller.z set from block ~ ~ ~ z
data modify storage struct_anim:utils root.ctx.array_select.filter.controller.Dimension set from entity @s Dimension
function struct_anim:utils/array/has with storage struct_anim:utils root.ctx.array_has
execute unless score #array_select.has_element struct_anim.int matches 1 run kill @s