data modify storage struct_anim:schedule root.current.callback set from storage struct_anim:schedule root.current.callbacks[0]
data remove storage struct_anim:schedule root.current.callbacks[0]
function struct_anim:macrosheduler/_run_scheduled/__step with storage struct_anim:schedule root.current

execute store result score #TOTAL_COUNT struct_anim.timestamp run data get storage struct_anim:schedule root.current.callbacks