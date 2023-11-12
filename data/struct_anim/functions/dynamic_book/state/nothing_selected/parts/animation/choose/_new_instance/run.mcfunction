function struct_anim:dynamic_book/selection/get

data modify storage struct_anim:utils root.args.get_animation.id set from storage struct_anim:animations root.suggestions[-1].animations.animation
function struct_anim:animation/search/animation_by_name

data modify storage struct_anim:utils root.ctx.give_instantiate_animation_itemset.name set from storage struct_anim:animations root.animations[-1].frames[0]
data modify storage struct_anim:utils root.ctx.give_instantiate_animation_itemset.id set from storage struct_anim:animations root.animations[-1].animation

function struct_anim:dynamic_book/clear
function struct_anim:itemset/animation/instantiate/give with storage struct_anim:utils root.ctx.give_instantiate_animation_itemset