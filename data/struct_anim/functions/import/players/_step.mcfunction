execute unless data storage struct_anim:utils root.args.import.all.values[0] run return 0

# Any step code here
data modify storage struct_anim:utils root.ctx.array_select.filter.uuid set from storage struct_anim:utils root.args.import.all.values[0].uuid
function struct_anim:utils/array/has with storage struct_anim:utils root.ctx.array_select
execute if score #array_select.has_element struct_anim.int matches 0 run data modify storage struct_anim:id root.players append from storage struct_anim:utils root.args.import.all.values[0]
execute unless score #array_select.has_element struct_anim.int matches 0 run scoreboard players add #import.all.skipped struct_anim.int 1
execute if score #array_select.has_element struct_anim.int matches 0 run scoreboard players add #import.all.added struct_anim.int 1

data remove storage struct_anim:utils root.args.import.all.values[0]
function struct_anim:import/players/_step