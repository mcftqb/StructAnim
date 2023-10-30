function struct_anim:dynamic_book/selection/get
data modify storage struct_anim:dynbook root.books[-1].pages set value []

data modify storage struct_anim:dynbook root.books[-1].title set value "SA: Edit Animation Frames"
data modify storage struct_anim:dynbook root.books[-1].description set value "Use me to create and edit animation frames"

function struct_anim:animator/selection/get
function struct_anim:animation/search/animation_by_selection

data modify storage struct_anim:dynbook root.books[-1].page_ctx.id set from storage struct_anim:animations root.animators[-1].id
data modify storage struct_anim:dynbook root.books[-1].page_ctx.animation set from storage struct_anim:animations root.animators[-1].animation

function struct_anim:id/player/get_name
data modify storage struct_anim:dynbook root.books[-1].page_ctx.player set from storage struct_anim:id root.players[-1].name

data modify storage struct_anim:dynbook root.books[-1].parts.page set value []
function struct_anim:dynamic_book/state/edit_frames/_make_page with storage struct_anim:dynbook root.books[-1].page_ctx

function struct_anim:dynamic_book/give
