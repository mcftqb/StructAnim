fill ~ ~1 ~ ~ ~1 ~ air replace command_block

function struct_anim:utils/error/reset

execute unless block ~ ~ ~ structure_block{mode:"SAVE"} run function struct_anim:utils/error/show {e:["Block below is not an Animation Controller"]}
execute unless score #is_error struct_anim.int matches 0 run return 0

execute unless data block ~ ~ ~ author run return 0
execute if block ~ ~ ~ structure_block{name:""} run function struct_anim:utils/error/show {e:["Wrong name"]}
execute unless score #is_error struct_anim.int matches 0 run return 0

data modify storage struct_anim:utils root.args.animation.new.start.namespace set string block ~ ~ ~ name 0 10
execute unless data storage struct_anim:utils root.args.animation.new.start{namespace:"minecraft:"} run function struct_anim:utils/error/show {e:["Custom namespace not supported!"]}
execute unless score #is_error struct_anim.int matches 0 run return 0

function struct_anim:animation/search/prefill
data modify storage struct_anim:utils root.ctx.array_select.filter.name set string block ~ ~ ~ name 10
data modify storage struct_anim:utils root.ctx.array_select.filter.author set from block ~ ~ ~ author
function struct_anim:utils/array/has with storage struct_anim:utils root.ctx.array_select
execute if score #array_select.has_element struct_anim.int matches 1 run function struct_anim:utils/error/show {e:["You already have animation with such name!"]}
execute unless score #is_error struct_anim.int matches 0 run return 0

# Register animation controller owner
data modify storage struct_anim:utils root.ctx.set_player_name.name set from block ~ ~ ~ author
function struct_anim:id/player/store_name with storage struct_anim:utils root.ctx.set_player_name

function struct_anim:animation/new/start/_make