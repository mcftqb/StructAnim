# give_copy_animation_itemset uses context
# {
#  mirror: str, rotation: str, 
#  seed: int, integrity: double, 
#  name: str, id: str,
# }
function struct_anim:itemset/animation/edition/clear
function struct_anim:dynamic_book/clear
$give @s structure_block{display:{Name:'{"text":"Animation Controller","color":"gold","bold":true}',Lore:['{"text":"Place me somewhere"}','{"text":"Setup position for animation to play"}','{"text":"And place command block above"}']},struct_anim_itemset: "animation_copy", BlockEntityTag:{rotation:"$(rotation)", mirror:"$(mirror)", name: "$(name)", metadata: "$(id)", seed:$(seed), integrity:$(integrity), mode:"LOAD", ignoreEntities:1b}, BlockStateTag:{mode:"load"}} 1

give @s command_block{CanPlaceOn:["minecraft:structure_block"],display:{Name:'{"text":"Animation controller activator","color":"gold","bold":true}',Lore:['{"text":"Place me ontop of animation controller"}']},struct_anim_itemset: "animation_copy",BlockEntityTag:{TrackOutput:0b,auto:1b,Command:"execute positioned ~ ~-1 ~ run function struct_anim:animator/copy/activate"}} 1
