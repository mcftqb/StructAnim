function struct_anim:in/command_block/callback
execute if block ~ ~ ~ #struct_anim:command_blocks[facing=up] positioned ~ ~1 ~ run function struct_anim:in/command_block/callbacks
execute if block ~ ~ ~ #struct_anim:command_blocks[facing=down] positioned ~ ~-1 ~ run function struct_anim:in/command_block/callbacks
execute if block ~ ~ ~ #struct_anim:command_blocks[facing=east] positioned ~1 ~ ~ run function struct_anim:in/command_block/callbacks
execute if block ~ ~ ~ #struct_anim:command_blocks[facing=west] positioned ~-1 ~ ~ run function struct_anim:in/command_block/callbacks
execute if block ~ ~ ~ #struct_anim:command_blocks[facing=south] positioned ~ ~ ~1 run function struct_anim:in/command_block/callbacks
execute if block ~ ~ ~ #struct_anim:command_blocks[facing=north] positioned ~ ~ ~-1 run function struct_anim:in/command_block/callbacks
