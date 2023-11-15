function struct_anim:in/command_block/callback
execute if block ~ ~ ~ command_block[facing=up] positioned ~ ~1 ~ run function struct_anim:in/command_block/callbacks
execute if block ~ ~ ~ command_block[facing=down] positioned ~ ~-1 ~ run function struct_anim:in/command_block/callbacks
execute if block ~ ~ ~ command_block[facing=east] positioned ~1 ~ ~ run function struct_anim:in/command_block/callbacks
execute if block ~ ~ ~ command_block[facing=west] positioned ~-1 ~ ~ run function struct_anim:in/command_block/callbacks
execute if block ~ ~ ~ command_block[facing=south] positioned ~ ~ ~1 run function struct_anim:in/command_block/callbacks
execute if block ~ ~ ~ command_block[facing=north] positioned ~ ~ ~-1 run function struct_anim:in/command_block/callbacks
