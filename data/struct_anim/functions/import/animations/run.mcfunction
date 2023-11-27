data modify storage struct_anim:utils root.args.import.all.values set value []
data modify storage struct_anim:utils root.args.import.all.values set from entity @s SelectedItem.tag.struct_anim_data.animations
function struct_anim:animation/search/prefill
scoreboard players set #import.all.skipped struct_anim.int 0
scoreboard players set #import.all.added struct_anim.int 0
function struct_anim:import/animations/_step
tellraw @s [{"text": "Animations imported: ", "color": "gold"}, {"score":{"objective": "struct_anim.int", "name": "#import.all.added"}, "bold": true}, " | Skipped: ", {"score":{"objective": "struct_anim.int", "name": "#import.all.skipped"}, "bold": true}]