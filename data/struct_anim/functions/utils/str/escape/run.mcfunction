# str.escape uses args (value: str)
# returns result

# This method was discovered by qb by pure chance
# It allows to escape string before macro concatenation
# I do not claim authorship in any case

# data modify storage struct_anim:utils root.args.str.escape.value set value ""
# Name resolution performs only when command run in player context
execute as @p run loot spawn ~ ~ ~ loot struct_anim:str/escape
execute as @e[limit=1,predicate=struct_anim:is_str_escape_item] at @s run function struct_anim:utils/str/escape/_on_escape
