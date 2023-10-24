data modify storage struct_anim:dynbook root.book.pages set value []

data modify storage struct_anim:dynbook root.book.title set value "SA: Edit Animation Frames"
data modify storage struct_anim:dynbook root.book.description set value "Use me to create and edit animation frames"

function struct_anim:animator/selection/get
function struct_anim:animation/search/animation_by_selection
data modify storage struct_anim:dynbook root.book.page_ctx set value {frames_count: 0}
data modify storage struct_anim:dynbook root.book.page_ctx merge from storage struct_anim:animations root.animations[-1]

data modify storage struct_anim:dynbook root.book.page_ctx merge from storage struct_anim:animations root.animators[-1]

execute store result score #dynbook.edit_frames.animation.playing struct_anim.int run data get storage struct_anim:animations root.animators[-1].play
execute unless score #dynbook.edit_frames.animation.playing struct_anim.int matches 1 run data modify storage struct_anim:dynbook root.book.page_ctx.playpause set value "play"
execute if score #dynbook.edit_frames.animation.playing struct_anim.int matches 1 run data modify storage struct_anim:dynbook root.book.page_ctx.playpause set value "pause"

execute store result score #dynbook.edit_frames.animation.reversed struct_anim.int run data get storage struct_anim:animations root.animators[-1].reversed
execute unless score #dynbook.edit_frames.animation.reversed struct_anim.int matches 1 run data modify storage struct_anim:dynbook root.book.page_ctx.direction set value "normal"
execute if score #dynbook.edit_frames.animation.reversed struct_anim.int matches 1 run data modify storage struct_anim:dynbook root.book.page_ctx.direction set value "reversed"

data modify storage struct_anim:dynbook root.book.page_ctx.on_click set value "/function struct_anim:dynamic_book/state/edit_frames/_on"

function struct_anim:dynamic_book/state/edit_frames/_make_page with storage struct_anim:dynbook root.book.page_ctx

function struct_anim:dynamic_book/give
