# Soft update could only affect component resolution dependent parts
# and can't update macros-dependent parts 
# or sections wich should be re-evaluated

execute store success score #dynamic_book.has_in_mainhand struct_anim.int if predicate struct_anim:dynamic_book/in_mainhand 

execute store success score #dynamic_book.has_in_offhand struct_anim.int if predicate struct_anim:dynamic_book/in_offhand 

execute if score #dynamic_book.has_in_mainhand struct_anim.int matches 0 if score #dynamic_book.has_in_offhand struct_anim.int matches 0 run return 0

function struct_anim:dynamic_book/selection/get
function struct_anim:animator/selection/get
function struct_anim:animation/search/animation_by_selection
function #struct_anim:soft_updatable_parts

execute if score #dynamic_book.has_in_mainhand struct_anim.int matches 1 run item modify entity @s weapon.mainhand struct_anim:dynamic_book_update

execute if score #dynamic_book.has_in_offhand struct_anim.int matches 1 run item modify entity @s weapon.offhand struct_anim:dynamic_book_update
