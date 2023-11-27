# str.interpret uses args (value: str)
# returns result

# Name resolution performs only when command run in player context
execute as @p run loot spawn ~ ~ ~ loot struct_anim:str/interpret
execute as @e[limit=1,predicate=struct_anim:is_str_interpret_item] at @s run function struct_anim:utils/str/interpret/_on_interpret
