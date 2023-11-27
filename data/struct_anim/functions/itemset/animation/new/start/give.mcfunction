function struct_anim:itemset/animation/new/start/text/controller

data modify storage struct_anim:utils root.ctx.animation_new.give.start set from storage struct_anim:utils root.return.itemset.animation.new.controller
data modify storage struct_anim:utils root.ctx.animation_new.give.start.UUID set from entity @s UUID
function struct_anim:itemset/animation/new/start/_give with storage struct_anim:utils root.ctx.animation_new.give.start
tellraw @s {"text": "Read lore-description of given items to know how to make a new animation!", "color": "gold"}