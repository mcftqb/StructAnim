function struct_anim:itemset/animation/new/start/text/controller
function struct_anim:itemset/animation/new/start/_give with storage struct_anim:utils root.return.itemset.animation.new.controller
tellraw @s {"text": "Read lore-description of given items to know how to make a new animation!", "color": "gold"}