function struct_anim:animator/selection/get
function struct_anim:animator/convert/to_block
data modify storage struct_anim:utils root.ctx.give_copy_animation_itemset set from storage struct_anim:animations root.animators[-1].placement
data modify storage struct_anim:utils root.ctx.give_copy_animation_itemset.name set from storage struct_anim:animations root.animators[-1].frame_name
data modify storage struct_anim:utils root.ctx.give_copy_animation_itemset.id set from storage struct_anim:animations root.animators[-1].id
function struct_anim:itemset/animation/copy/give with storage struct_anim:utils root.ctx.give_copy_animation_itemset