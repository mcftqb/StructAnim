execute store result score #action.reverse.reversed struct_anim.int run data get storage struct_anim:animations root.animators[-1].reversed
execute if score #action.reverse.reversed struct_anim.int matches 1 run data modify storage struct_anim:animations root.animators[-1].reversed set value false
execute unless score #action.reverse.reversed struct_anim.int matches 1 run data modify storage struct_anim:animations root.animators[-1].reversed set value true
