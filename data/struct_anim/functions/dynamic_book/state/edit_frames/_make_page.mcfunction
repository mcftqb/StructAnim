# uses selected book
data modify storage struct_anim:dynbook root.books[-1].parts.page append value []

# Set macro selectors
$data modify storage struct_anim:dynbook root.books[-1].page_ctx.this_animator set value "root.animators[{id:\\\\\"$(id)\\\\\"}]"
$data modify storage struct_anim:dynbook root.books[-1].page_ctx.this_animation set value "root.animations[{animation:\\\\\"$(animation)\\\\\"}]"
$data modify storage struct_anim:dynbook root.books[-1].page_ctx.this_book set value "root.books[{player:\\\\\"$(player)\\\\\"}]"

# Check if has frames
execute store success score #dynbook.edit_frames.animation.has_frames struct_anim.int if data storage struct_anim:animations root.animations[-1].frames[0]

# Select animator
function struct_anim:dynamic_book/state/edit_frames/_set_onclick {path: "select"}
function struct_anim:dynamic_book/state/edit_frames/parts/select/make with storage struct_anim:dynbook root.books[-1].page_ctx
data modify storage struct_anim:dynbook root.books[-1].parts.page[0] append from storage struct_anim:dynbook root.books[-1].parts.select

# Capture new frame
function struct_anim:dynamic_book/state/edit_frames/_set_onclick {path: "frames/new"}
function struct_anim:dynamic_book/state/edit_frames/parts/frames/new/make with storage struct_anim:dynbook root.books[-1].page_ctx
data modify storage struct_anim:dynbook root.books[-1].parts.page[0] append from storage struct_anim:dynbook root.books[-1].parts.frames.new

# Animation controls
execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run function struct_anim:dynamic_book/state/edit_frames/_set_onclick {path: "animation/controls"}
execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run function struct_anim:dynamic_book/state/edit_frames/parts/animation/controls/make with storage struct_anim:dynbook root.books[-1].page_ctx
execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run data modify storage struct_anim:dynbook root.books[-1].parts.page[0] append from storage struct_anim:dynbook root.books[-1].parts.animation.controls

# Animation instance
function struct_anim:dynamic_book/state/edit_frames/_set_onclick {path: "animation/instance"}
function struct_anim:dynamic_book/state/edit_frames/parts/animation/instance/make with storage struct_anim:dynbook root.books[-1].page_ctx
data modify storage struct_anim:dynbook root.books[-1].parts.page[0] append from storage struct_anim:dynbook root.books[-1].parts.animation.instance

# Go to
function struct_anim:dynamic_book/state/edit_frames/_set_onclick {path: "goto"}
function struct_anim:dynamic_book/state/edit_frames/parts/goto/make with storage struct_anim:dynbook root.books[-1].page_ctx
data modify storage struct_anim:dynbook root.books[-1].parts.page[0] append from storage struct_anim:dynbook root.books[-1].parts.goto

# Callbacks
execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run function struct_anim:dynamic_book/state/edit_frames/_set_onclick {path: "manage_callbacks"}
execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run function struct_anim:dynamic_book/state/edit_frames/parts/manage_callbacks/make with storage struct_anim:dynbook root.books[-1].page_ctx
execute unless score #dynbook.edit_frames.animation.has_frames struct_anim.int matches 0 run data modify storage struct_anim:dynbook root.books[-1].parts.page[0] append from storage struct_anim:dynbook root.books[-1].parts.manage_callbacks

$data modify storage struct_anim:dynbook root.books[-1].pages append value '["",{"nbt":"root.books[{player: \\"$(player)\\"}].parts.page[0][]", "storage":"struct_anim:dynbook", "separator":"\\n\\n", "interpret":"true"}]'
