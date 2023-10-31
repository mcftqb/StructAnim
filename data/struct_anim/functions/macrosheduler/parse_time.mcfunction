scoreboard players reset #schedule.parse_time.error struct_anim.int
data modify storage struct_anim:schedule root.timestamp.units set string storage struct_anim:utils root.args.schedule.time -1
data modify storage struct_anim:schedule root.timestamp.svalue set string storage struct_anim:utils root.args.schedule.time 0 -1

data modify storage struct_anim:schedule root.timestamp.value set value 0
function struct_anim:macrosheduler/_get_timestamp_offset with storage struct_anim:schedule root.timestamp

# if (units == "s") value *= 20
execute if data storage struct_anim:schedule root.timestamp{units: "s"} store result storage struct_anim:schedule root.timestamp.value double 1 run data get storage struct_anim:schedule root.timestamp.value 20.0

# if (units == "d") value *= 24000
execute if data storage struct_anim:schedule root.timestamp{units: "d"} store result storage struct_anim:schedule root.timestamp.value double 1 run data get storage struct_anim:schedule root.timestamp.value 24000.0

# if (units !in "tsd") log.error("No such units!")
execute store success score #schedule.parse_time.error struct_anim.int unless data storage struct_anim:schedule root.timestamp{units: "t"} unless data storage struct_anim:schedule root.timestamp{units: "s"} unless data storage struct_anim:schedule root.timestamp{units: "d"}

execute if score #schedule.parse_time.error struct_anim.int matches 1 run function struct_anim:utils/log/error {text: "Unknown time units (only t/s/d supported)", trace: "macrosheduler/parse_time"}
execute if score #schedule.parse_time.error struct_anim.int matches 1 run return 0

execute store result score #TIMESTAMP_OFFSET struct_anim.timestamp run data get storage struct_anim:schedule root.timestamp.value 

execute store success score #schedule.parse_time.error struct_anim.int unless score #TIMESTAMP_OFFSET struct_anim.timestamp matches 1..
execute if score #schedule.parse_time.error struct_anim.int matches 1 run tellraw @a [{"color": "red", "text": "Incorrect interval: "}, {"score":{"name": "#TIMESTAMP_OFFSET", "objective": "struct_anim.timestamp"}}, {"text": " tick(-s)"}]
execute if score #schedule.parse_time.error struct_anim.int matches 1 run return 0
