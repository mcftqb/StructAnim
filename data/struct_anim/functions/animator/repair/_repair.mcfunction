$execute in $(Dimension) positioned $(x) $(y) $(z) run function struct_anim:animator/mark/run

execute if data storage struct_anim:animations root.animators[-1].locked run return 0

$execute in $(Dimension) run setblock $(x) $(y) $(z) structure_block[mode=$(mode)]
$execute in $(Dimension) positioned $(x) $(y) $(z) run function struct_anim:animator/repair/_set_block_props
