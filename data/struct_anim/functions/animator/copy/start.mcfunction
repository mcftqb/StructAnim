function struct_anim:animator/selection/get
function struct_anim:animation/search/animation_by_selection

execute unless data storage struct_anim:animations root.animations[-1].frames[0] run tellraw @s [{"text": "Can't copy animation instance with no frames!", "color": "red"}]
execute unless data storage struct_anim:animations root.animations[-1].frames[0] run return 0

function struct_anim:animator/convert/to_block
data modify storage struct_anim:utils root.ctx.give_copy_animation_itemset set from storage struct_anim:animations root.animators[-1].placement
data modify storage struct_anim:utils root.ctx.give_copy_animation_itemset.name set from storage struct_anim:animations root.animations[-1].frames[0]
data modify storage struct_anim:utils root.ctx.give_copy_animation_itemset.id set from storage struct_anim:animations root.animators[-1].id
data modify storage struct_anim:utils root.ctx.give_copy_animation_itemset.UUID set from entity @s UUID
function struct_anim:itemset/animation/copy/give with storage struct_anim:utils root.ctx.give_copy_animation_itemset