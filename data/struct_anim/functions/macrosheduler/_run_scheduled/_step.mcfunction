function struct_anim:macrosheduler/_run_scheduled/__step with storage struct_anim:schedule root.current.callbacks[0]
data remove storage struct_anim:schedule root.current.callbacks[0]

execute store result score #TOTAL_COUNT struct_anim.timestamp run data get storage struct_anim:schedule root.current.callbacks

execute unless score #TOTAL_COUNT struct_anim.timestamp matches 0 run function struct_anim:macrosheduler/_run_scheduled/_step