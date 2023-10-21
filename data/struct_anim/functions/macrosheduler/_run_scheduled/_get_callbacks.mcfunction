data modify storage struct_anim:schedule root.current.callbacks set value []
$data modify storage struct_anim:schedule root.current.callbacks set from storage struct_anim:schedule root.list[{timestamp: $(timestamp)}].callbacks
$data remove storage struct_anim:schedule root.list[{timestamp: $(timestamp)}]