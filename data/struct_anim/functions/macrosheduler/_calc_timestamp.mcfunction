execute store result score #TIMESTAMP struct_anim.timestamp run time query gametime

function struct_anim:macrosheduler/parse_time
execute if score #schedule.parse_time.error struct_anim.int matches 1 run return 0

scoreboard players operation #TIMESTAMP struct_anim.timestamp += #TIMESTAMP_OFFSET struct_anim.timestamp
execute store result storage struct_anim:utils root.args.schedule.timestamp int 1 run scoreboard players get #TIMESTAMP struct_anim.timestamp