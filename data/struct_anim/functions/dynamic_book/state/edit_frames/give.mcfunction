data modify storage struct_anim:dynbook book.pages set value []

data modify storage struct_anim:dynbook book.title set value "SA: Edit Animation Frames"
data modify storage struct_anim:dynbook book.description set value "Use me to create and edit animation frames"

function struct_anim:animation/search/animation_by_selection
function struct_anim:animation/frames/count
data modify storage struct_anim:dynbook book.page_ctx set from storage struct_anim:animations search.animation

function struct_anim:animator/selection/get
data modify storage struct_anim:dynbook book.page_ctx merge from storage struct_anim:animations selected_animator

execute unless data storage struct_anim:animations selected_animator{play: true} run data modify storage struct_anim:dynbook book.page_ctx.playpause set value "play"
execute if data storage struct_anim:animations selected_animator{play: true} run data modify storage struct_anim:dynbook book.page_ctx.playpause set value "pause"

execute unless data storage struct_anim:animations selected_animator{reversed: true} run data modify storage struct_anim:dynbook book.page_ctx.direction set value "normal"
execute if data storage struct_anim:animations selected_animator{reversed: true} run data modify storage struct_anim:dynbook book.page_ctx.direction set value "reversed"

data modify storage struct_anim:dynbook book.page_ctx.on_click set value "/function struct_anim:dynamic_book/state/edit_frames/_on"

function struct_anim:dynamic_book/state/edit_frames/_make_page with storage struct_anim:dynbook book.page_ctx

function struct_anim:dynamic_book/give
