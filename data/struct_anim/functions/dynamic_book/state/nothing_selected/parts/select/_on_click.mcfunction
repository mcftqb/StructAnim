function struct_anim:animator/discover/run

# Update book
execute if score #animator.discover.success struct_anim.int matches 1 run function struct_anim:dynamic_book/clear
execute if score #animator.discover.success struct_anim.int matches 1 run function struct_anim:itemset/animation/edition/_give