function struct_anim:animator/discover/has
execute if score #animator.discover.success struct_anim.int matches 1 run function struct_anim:animator/discover/_success
execute unless score #animator.discover.success struct_anim.int matches 1 run function struct_anim:animator/discover/_not_found
