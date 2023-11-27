execute unless data entity @s SelectedItem.tag.struct_anim_data run tellraw @s {"text": "No import source found, put the exported book in the main hand", "color": "red"}
execute unless data entity @s SelectedItem.tag.struct_anim_data run return 0
function struct_anim:import/players/run
function struct_anim:import/animations/run
tellraw @s {"text": "Animations import successfully finished!", "color": "gold"}
