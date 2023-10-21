execute store result score #TIMESTAMP struct_anim.timestamp run time query gametime
data modify storage struct_anim:schedule table.timestamp.units set string storage struct_anim:schedule table.new.time -1
data modify storage struct_anim:schedule table.timestamp.value set string storage struct_anim:schedule table.new.time 0 -1
function struct_anim:macrosheduler/_get_timestamp_offset with storage struct_anim:schedule table.timestamp

# if (units == "s") value *= 20
execute if data storage struct_anim:schedule table.timestamp{units: "s"} store result storage struct_anim:schedule table.timestamp.value double 20 run data get storage struct_anim:schedule table.timestamp.value 

# if (units == "d") value *= 24000
execute if data storage struct_anim:schedule table.timestamp{units: "d"} store result storage struct_anim:schedule table.timestamp.value double 24000 run data get storage struct_anim:schedule table.timestamp.value 

# if (units !in "tsd") log.error("No such units!")
execute unless data storage struct_anim:schedule table.timestamp{units: "t"} unless data storage struct_anim:schedule table.timestamp{units: "s"} unless data storage struct_anim:schedule table.timestamp{units: "d"} run function struct_anim:debug {text: "Unknown time units (only t/s/d supported)", trace: "macrosheduler/_calc_timestamp"}

execute store result score #TIMESTAMP_OFFSET struct_anim.timestamp run data get storage struct_anim:schedule table.timestamp.value 

scoreboard players operation #TIMESTAMP struct_anim.timestamp += #TIMESTAMP_OFFSET struct_anim.timestamp
execute store result storage struct_anim:schedule table.new.timestamp int 1 run scoreboard players get #TIMESTAMP struct_anim.timestamp