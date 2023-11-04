# Uses selected action
execute store result score #action_stick.select_next.num struct_anim.int run data get storage struct_anim:dynbook root.action_stick.actions[-1].num
execute store result score #action_stick.select_next.max struct_anim.int run data get storage struct_anim:dynbook root.action_stick.actions
scoreboard players add #action_stick.select_next.num struct_anim.int 1
scoreboard players operation #action_stick.select_next.num struct_anim.int %= #action_stick.select_next.max struct_anim.int
execute store result storage struct_anim:utils root.args.action_stick.action.select.num int 1 run scoreboard players get #action_stick.select_next.num struct_anim.int
function struct_anim:action_stick/action/select/by_num