function struct_anim:dynamic_book/selection/get

data modify storage struct_anim:utils root.args.get_animation.id set from storage struct_anim:animations root.suggestions[-1].animations.animation
function struct_anim:animation/search/animation_by_name

execute unless data storage struct_anim:animations root.animations[-1].frames[0] run tellraw @s {"text": "Could not instantiate animation without frames!", "color": "red"}
execute unless data storage struct_anim:animations root.animations[-1].frames[0] if score #animation.selection.has_instance struct_anim.int matches 0 run tellraw @s [{"text": "This animation has no instances too, may be it's corrupted? ", "color": "red"}, {"text": "Click Here", "bold": true, "clickEvent": {"action": "run_command","value": "/function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/_new_instance/_delete"}, "hoverEvent": {"action": "show_text", "value": [{"text": "Will remove ", "color": "red"},{"nbt":"root.suggestions[-1].animations.animation", "storage": "struct_anim:animations", "bold": true, "font": "uniform"}," animation"]}}, " to DELETE this animation completely"]
execute unless data storage struct_anim:animations root.animations[-1].frames[0] run return 0

data modify storage struct_anim:utils root.ctx.give_instantiate_animation_itemset.name set from storage struct_anim:animations root.animations[-1].frames[0]
data modify storage struct_anim:utils root.ctx.give_instantiate_animation_itemset.id set from storage struct_anim:animations root.animations[-1].animation
data modify storage struct_anim:utils root.ctx.give_instantiate_animation_itemset merge from storage struct_anim:animations root.animations[-1].defaults.placement

function struct_anim:dynamic_book/clear
function struct_anim:itemset/animation/instantiate/give with storage struct_anim:utils root.ctx.give_instantiate_animation_itemset