function struct_anim:itemset/clear/run {name: "animation_new_area_markup"}

give @s debug_stick{display:{Lore:['{"text":"Use me to roll and customise blocks in animation"}','{"text":"But don\'t use me on Animation Controller and on other datapack things"}']},struct_anim_itemset: "animation_edition"} 1
give @s structure_void{display:{Lore:['{"text":"Places in animation where this block is used stay ignored"}','{"text":"Without this block animation will replace any block where air is used"}']},struct_anim_itemset: "animation_edition"} 1

function struct_anim:dynamic_book/state/edit_frames/give
