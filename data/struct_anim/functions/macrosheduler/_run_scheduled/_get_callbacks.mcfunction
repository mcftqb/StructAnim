data modify storage struct_anim:schedule table.current.callbacks set value []
$data modify storage struct_anim:schedule table.current.callbacks set from storage struct_anim:schedule table.list[{timestamp: $(timestamp)}].callbacks
$data remove storage struct_anim:schedule table.list[{timestamp: $(timestamp)}]