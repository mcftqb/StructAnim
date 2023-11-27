function struct_anim:dynamic_book/selection/get

data modify storage struct_anim:dynbook root.books[-1].title set value "SA: No Animation Selected"
data modify storage struct_anim:dynbook root.books[-1].description set value "Use me to create / search animations"

function struct_anim:animator/selection/get
function struct_anim:animation/search/animation_by_selection

data modify storage struct_anim:dynbook root.books[-1].page_ctx.player_id set from entity @s UUID
data modify storage struct_anim:dynbook root.books[-1].page_ctx.current_state set value "nothing_selected"

function struct_anim:dynamic_book/state/nothing_selected/_add_selectors with storage struct_anim:dynbook root.books[-1].page_ctx

function struct_anim:dynamic_book/utils/page/all

function struct_anim:dynamic_book/give
