data modify storage struct_anim:schedule root.current.callbacks set value []
$execute unless data storage struct_anim:schedule root.list[{immidiate:true}] run data modify storage struct_anim:schedule root.current.callbacks set from storage struct_anim:schedule root.list[{timestamp: $(timestamp)}].callbacks
data modify storage struct_anim:schedule root.current.callbacks append from storage struct_anim:schedule root.list[{immidiate:true}].callbacks[]
$data remove storage struct_anim:schedule root.list[{timestamp: $(timestamp)}]
data remove storage struct_anim:schedule root.list[{immidiate:true}]