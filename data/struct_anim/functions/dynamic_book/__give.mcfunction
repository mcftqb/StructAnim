scoreboard players set #VAR_0 struct_anim.int 8
function struct_anim:select/start
execute as @e[type=marker,tag=struct_anim_select] at @s unless block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{struct_anim_dynbook:1b}}} run kill @s

execute store success score #VAR_0 struct_anim.int if entity @e[type=marker,tag=struct_anim_select]
$execute as @e[type=marker,tag=struct_anim_select] at @s run data modify block ~ ~ ~ Book.tag set value $(tag)
function struct_anim:select/deselect

execute store success score #VAR_1 struct_anim.int if data entity @s SelectedItem.tag.struct_anim_dynbook 

execute store success score #VAR_2 struct_anim.int if data entity @s Inventory[{Slot:-106b}].tag.struct_anim_dynbook 

$execute if score #VAR_1 struct_anim.int matches 1 run item replace entity @s weapon.mainhand with written_book$(tag)

$execute if score #VAR_2 struct_anim.int matches 1 run item replace entity @s weapon.offhand with written_book$(tag)

execute if score #VAR_0 struct_anim.int matches 0 if score #VAR_1 struct_anim.int matches 0 if score #VAR_2 struct_anim.int matches 0 run function struct_anim:dynamic_book/clear

$execute if score #VAR_0 struct_anim.int matches 0 if score #VAR_1 struct_anim.int matches 0 if score #VAR_2 struct_anim.int matches 0 run give @s written_book$(tag) 1
