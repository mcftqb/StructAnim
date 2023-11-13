scoreboard players set #animation.size_check.error struct_anim.int 0
execute if block ~ ~ ~ structure_block{sizeX: 0} run scoreboard players set #animation.size_check.error struct_anim.int 1
execute if block ~ ~ ~ structure_block{sizeY: 0} run scoreboard players set #animation.size_check.error struct_anim.int 1
execute if block ~ ~ ~ structure_block{sizeZ: 0} run scoreboard players set #animation.size_check.error struct_anim.int 1
