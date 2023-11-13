# Uses selected animation

function struct_anim:animation/delete/_delete_instances/run
function struct_anim:animation/delete/_delete_frames/run

tellraw @s [{"text": "Successfully removed ", "color": "gold"}, {"nbt":"root.animations[-1].name", "storage": "struct_anim:animations", "bold": true, "hoverEvent": {"action": "show_text","value": [{"text": "","color": "gold"},{"nbt":"root.animations[-1].animation", "storage": "struct_anim:animations", "font": "uniform", "bold": true}, " by ", {"nbt":"root.animations[-1].author", "storage": "struct_anim:animations", "bold": true}]}}, " animation!"]
data remove storage struct_anim:animations root.animations[-1]
