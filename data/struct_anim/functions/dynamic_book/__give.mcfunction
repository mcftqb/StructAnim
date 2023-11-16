scoreboard players set #select.max_steps struct_anim.int 8
function struct_anim:select/start
execute as @e[type=marker,tag=struct_anim_select] at @s unless block ~ ~ ~ minecraft:lectern[has_book=true]{Book:{tag:{struct_anim_dynbook:1b}}} run kill @s

execute store success score #dynamic_book.has_lectern_storages struct_anim.int if entity @e[type=marker,tag=struct_anim_select]
$execute as @e[type=marker,tag=struct_anim_select] at @s run data modify block ~ ~ ~ Book.tag set value $(tag)
function struct_anim:select/deselect

function struct_anim:dynamic_book/_try_soft_update

execute if score #dynamic_book.has_lectern_storages struct_anim.int matches 0 if score #dynamic_book.has_in_mainhand struct_anim.int matches 0 if score #dynamic_book.has_in_offhand struct_anim.int matches 0 run function struct_anim:dynamic_book/clear

$execute if score #dynamic_book.has_lectern_storages struct_anim.int matches 0 if score #dynamic_book.has_in_mainhand struct_anim.int matches 0 if score #dynamic_book.has_in_offhand struct_anim.int matches 0 run give @s written_book$(tag) 1
