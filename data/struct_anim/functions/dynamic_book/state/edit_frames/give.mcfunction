function struct_anim:dynamic_book/selection/get

data modify storage struct_anim:dynbook root.books[-1].title set value "SA: Edit Animation Frames"
data modify storage struct_anim:dynbook root.books[-1].description set value "Use me to create and edit animation frames"

function struct_anim:animator/selection/get
function struct_anim:animation/search/animation_by_selection

data modify storage struct_anim:dynbook root.books[-1].page_ctx.id set from storage struct_anim:animations root.animators[-1].id
data modify storage struct_anim:dynbook root.books[-1].page_ctx.animation set from storage struct_anim:animations root.animators[-1].animation
data modify storage struct_anim:dynbook root.books[-1].page_ctx.current_state set value "edit_frames"

data modify storage struct_anim:dynbook root.books[-1].page_ctx.player_id set from entity @s UUID

function struct_anim:dynamic_book/state/edit_frames/_add_selectors with storage struct_anim:dynbook root.books[-1].page_ctx

function struct_anim:dynamic_book/utils/page/all

function struct_anim:dynamic_book/give
