function struct_anim:itemset/animation/new/area_marking/clear

give @s structure_void{display:{Lore:['{"text":"Places in animation where this block is used stay ignored"}','{"text":"Without this block animation will replace any block where air is used"}']},struct_anim_itemset: "animation_edition"} 1

function struct_anim:dynamic_book/state/edit_frames/give
