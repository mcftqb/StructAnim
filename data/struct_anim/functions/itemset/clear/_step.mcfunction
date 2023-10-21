$data modify storage struct_anim:itemset root.clear.id set from entity @s Inventory[{tag:{struct_anim_itemset: "$(name)"}}].id

function struct_anim:itemset/clear/_clear with storage struct_anim:itemset root.clear

$execute if data entity @s Inventory[{tag:{struct_anim_itemset: "$(name)"}}] run function struct_anim:itemset/clear/_step with storage struct_anim:itemset root.clear