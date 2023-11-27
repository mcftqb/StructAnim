execute unless data entity @s SelectedItem.tag.struct_anim_data run tellraw @s {"text": "No import source found, put the exported book in the main hand", "color": "red"}
execute unless data entity @s SelectedItem.tag.struct_anim_data run return 0
function struct_anim:import/players/run
function struct_anim:import/animations/run
tellraw @s {"text": "Animations import successfully finished!", "color": "gold"}
tellraw @s [{"text":"Don't forget to copy your structures from the old world: ","color":"gold"}, {"text": ".minecraft/saves/YOUR_WORLD/generated/struct_anim", "clickEvent": {"action": "copy_to_clipboard", "value": ".minecraft/saves/YOUR_WORLD/generated/struct_anim"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click here to copy path", "color": "gold"}}}]
tellraw @s [{"text":"Note: Structures addition requires ","color":"dark_green"}, {"text": "reload", "bold": true, "underlined": true, "clickEvent": {"action": "run_command","value": "/reload"}}]