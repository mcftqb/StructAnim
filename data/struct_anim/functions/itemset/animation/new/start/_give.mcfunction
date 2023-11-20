function struct_anim:itemset/animation/edition/clear
$give @s structure_block$(value) 1

give @s command_block{CanPlaceOn:["minecraft:structure_block"],display:{Name:'{"text":"Animation controller activator","color":"gold","bold":true}',Lore:['{"text":"Place me ontop of animation controller"}']},struct_anim_itemset: "animation_new_start",BlockEntityTag:{TrackOutput:0b,auto:1b,Command:"function struct_anim:animation/new/start/activate"}} 1
