data modify storage struct_anim:utils root.args.import.all.values set from entity @s SelectedItem.tag.struct_anim_data.players
function struct_anim:id/player/prefill
scoreboard players set #import.all.skipped struct_anim.int 0
scoreboard players set #import.all.added struct_anim.int 0
function struct_anim:import/players/_step
tellraw @s [{"text": "Players imported: ", "color": "gold"}, {"score":{"objective": "struct_anim.int", "name": "#import.all.added"}, "bold": true}, " | Skipped: ", {"score":{"objective": "struct_anim.int", "name": "#import.all.skipped"}, "bold": true}]