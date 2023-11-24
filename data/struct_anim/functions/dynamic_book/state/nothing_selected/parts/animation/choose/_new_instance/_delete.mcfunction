function struct_anim:dynamic_book/selection/get

data modify storage struct_anim:utils root.args.get_animation.id set from storage struct_anim:animations root.suggestions[-1].animations.animation
function struct_anim:animation/search/animation_by_name

execute unless score #array_select.has_element struct_anim.int matches 1 run tellraw @s {"text": "No such animation!", "color": "red"}
execute if score #array_select.has_element struct_anim.int matches 1 run function struct_anim:animation/delete/run