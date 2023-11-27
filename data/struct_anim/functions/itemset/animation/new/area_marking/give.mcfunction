# animation.new_area_marking.give uses context {author: str, animation: str}
function struct_anim:itemset/animation/new/area_marking/text/corner with storage struct_anim:utils root.ctx.animation.new_area_marking.give
data modify storage struct_anim:utils root.ctx.animation.new_area_marking.give.tag set from storage struct_anim:utils root.return.itemset.animation.new.corner.value
execute at @s run function struct_anim:itemset/animation/new/area_marking/_give with storage struct_anim:utils root.ctx.animation.new_area_marking.give
