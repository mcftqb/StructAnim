execute unless block ~ ~ ~ command_block run return 0
execute if block ~ ~ ~ command_block{Command:""} run return 0

function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get

data modify storage struct_anim:utils root.ctx.input.add_callback set from storage struct_anim:animations root.suggestions[-1].callback
data modify storage struct_anim:utils root.ctx.input.add_callback.callback set from block ~ ~ ~ Command
execute align xyz positioned ~.5 ~.5 ~.5 run particle minecraft:end_rod ~ ~ ~ 0.25 0.25 0.25 0.01 300
function struct_anim:in/_trim_slash
function struct_anim:in/_add_callback with storage struct_anim:utils root.ctx.input.add_callback
