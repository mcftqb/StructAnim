execute as @a[predicate=struct_anim:action_stick/rclick] at @s run function struct_anim:action_stick/click/action/run
execute as @a[predicate=struct_anim:action_stick/shift_rclick] run function struct_anim:action_stick/click/next_action

scoreboard players reset @a struct_anim.action_stick_click
schedule function struct_anim:action_stick/click/await 5t replace