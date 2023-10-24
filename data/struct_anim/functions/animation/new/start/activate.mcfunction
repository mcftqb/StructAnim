setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ structure_block{mode:"SAVE"} run me Block below is not an Animation Controller
execute unless block ~ ~-1 ~ structure_block{mode:"SAVE"} run return 0
execute unless data block ~ ~-1 ~ author run return 0
execute if block ~ ~-1 ~ structure_block{name:""} run me Wrong name
execute if block ~ ~-1 ~ structure_block{name:""} run return 0

# Register animation controller owner
data modify storage struct_anim:utils root.ctx.set_player_name.name set from block ~ ~-1 ~ author
function struct_anim:id/player/store_name with storage struct_anim:utils root.ctx.set_player_name

execute positioned ~ ~-1 ~ run function struct_anim:animation/new/start/_make