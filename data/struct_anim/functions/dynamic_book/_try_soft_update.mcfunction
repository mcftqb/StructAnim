# Soft update could only affect component resolution dependent parts
# and can't update macros-dependent parts 
# or sections wich should be re-evaluated

# TODO: Current implementation assumes that book content are globally accessible for all the players (same for all), but in practice by player separation not yet implemented

execute store success score #dynamic_book.has_in_mainhand struct_anim.int if predicate struct_anim:dynamic_book/in_mainhand 

execute store success score #dynamic_book.has_in_offhand struct_anim.int if predicate struct_anim:dynamic_book/in_offhand 

execute if score #dynamic_book.has_in_mainhand struct_anim.int matches 1 run item modify entity @s weapon.mainhand struct_anim:dynamic_book_update

execute if score #dynamic_book.has_in_offhand struct_anim.int matches 1 run item modify entity @s weapon.offhand struct_anim:dynamic_book_update
