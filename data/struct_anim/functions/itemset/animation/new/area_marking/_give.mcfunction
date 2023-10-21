function struct_anim:itemset/clear/run {name: "animation_new_start"}

$give @s structure_block{display:{Name:'{"text":"Animation Area Corner","color":"gold","bold":true}',Lore:['{"text":"Place me at the corner outside of animation area"}','{"text":"To mark it\'s outside (exclusive) borders"}','{"text":"If 1 corner used: Marked area between corner and controller"}','{"text":"If 2 corners used: Marked area between them"}','{"text":"Area between corners counts without corners themselves"}']},struct_anim_itemset:"animation_new_area_markup",BlockEntityTag:{name:"$(animation)",rotation:"NONE",mirror:"NONE",mode:"CORNER"},BlockStateTag:{mode:"corner"}} 2

function struct_anim:dynamic_book/state/quickstart/give