setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ structure_block{mode:"SAVE"} run me Block below is not an Animation Controller
execute unless block ~ ~-1 ~ structure_block{mode:"SAVE"} run return 0
execute unless data block ~ ~-1 ~ author run return 0
execute if block ~ ~-1 ~ structure_block{name:""} run me Wrong name
execute if block ~ ~-1 ~ structure_block{name:""} run return 0

data modify storage struct_anim:utils root.args.animation.new.start.namespace set string block ~ ~-1 ~ name 0 10
execute unless data storage struct_anim:utils root.args.animation.new.start{namespace:"minecraft:"} run me Custom namespace not supported!
execute unless data storage struct_anim:utils root.args.animation.new.start{namespace:"minecraft:"} run return 0

function struct_anim:animation/search/prefill
data modify storage struct_anim:utils root.ctx.array_select.filter.name set string block ~ ~-1 ~ name 10
data modify storage struct_anim:utils root.ctx.array_select.filter.author set from block ~ ~-1 ~ author
function struct_anim:utils/array/has with storage struct_anim:utils root.ctx.array_select
execute if score #array_select.has_element struct_anim.int matches 1 run me You already have animation with such name!
execute if score #array_select.has_element struct_anim.int matches 1 run return 0

# Register animation controller owner
data modify storage struct_anim:utils root.ctx.set_player_name.name set from block ~ ~-1 ~ author
function struct_anim:id/player/store_name with storage struct_anim:utils root.ctx.set_player_name

execute positioned ~ ~-1 ~ run function struct_anim:animation/new/start/_make