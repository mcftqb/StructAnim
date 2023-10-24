execute store result score #TIMESTAMP struct_anim.timestamp run time query gametime
data modify storage struct_anim:schedule root.timestamp.units set string storage struct_anim:utils root.args.schedule.time -1
data modify storage struct_anim:schedule root.timestamp.value set string storage struct_anim:utils root.args.schedule.time 0 -1
function struct_anim:macrosheduler/_get_timestamp_offset with storage struct_anim:schedule root.timestamp

# if (units == "s") value *= 20
execute if data storage struct_anim:schedule root.timestamp{units: "s"} store result storage struct_anim:schedule root.timestamp.value double 20 run data get storage struct_anim:schedule root.timestamp.value 

# if (units == "d") value *= 24000
execute if data storage struct_anim:schedule root.timestamp{units: "d"} store result storage struct_anim:schedule root.timestamp.value double 24000 run data get storage struct_anim:schedule root.timestamp.value 

# if (units !in "tsd") log.error("No such units!")
execute unless data storage struct_anim:schedule root.timestamp{units: "t"} unless data storage struct_anim:schedule root.timestamp{units: "s"} unless data storage struct_anim:schedule root.timestamp{units: "d"} run function struct_anim:utils/log/error {text: "Unknown time units (only t/s/d supported)", trace: "macrosheduler/_calc_timestamp"}

execute store result score #TIMESTAMP_OFFSET struct_anim.timestamp run data get storage struct_anim:schedule root.timestamp.value 

execute unless score #TIMESTAMP_OFFSET struct_anim.timestamp matches 1.. run tellraw @a [{"color": "red", "text": "Can't schedule task for "}, {"score":{"name": "#TIMESTAMP_OFFSET", "objective": "struct_anim.timestamp"}}, {"text": " tick(-s)"}]
execute unless score #TIMESTAMP_OFFSET struct_anim.timestamp matches 1.. run return 0

scoreboard players operation #TIMESTAMP struct_anim.timestamp += #TIMESTAMP_OFFSET struct_anim.timestamp
execute store result storage struct_anim:utils root.args.schedule.timestamp int 1 run scoreboard players get #TIMESTAMP struct_anim.timestamp