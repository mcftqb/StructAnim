function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get
function struct_anim:animator/selection/prefill
data modify storage struct_anim:utils root.ctx.array_select.filter.animation set from storage struct_anim:animations root.suggestions[-1].animations.animation
function struct_anim:utils/array/has with storage struct_anim:utils root.ctx.array_select
tellraw @a {"nbt":"root.ctx.array_select", "storage": "struct_anim:utils"}
scoreboard players reset #animation.selection.has_instance struct_anim.int
scoreboard players operation #animation.selection.has_instance struct_anim.int = #array_select.has_element struct_anim.int 

execute unless score #array_select.has_element struct_anim.int matches 0 run tellraw @s [{"text":"","color":"gold"}, "Choose action: ", {"text": "Select Animation Instance", "bold": true, "clickEvent": {"action": "run_command","value": "/function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/_select_instance/choose"}}, " | ", {"text": "New Instance from Animation", "bold": true, "clickEvent": {"action": "run_command","value": "/function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/_new_instance/run"}}]
execute if score #array_select.has_element struct_anim.int matches 0 run function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/_no_instances