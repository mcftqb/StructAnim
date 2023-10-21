execute store result storage struct_anim:id search.id int 1 run scoreboard players get @s struct_anim.id
execute unless score @s struct_anim.id matches 0.. run data modify storage struct_anim:id search.id set value -1
function struct_anim:id/player/_get_name with storage struct_anim:id search