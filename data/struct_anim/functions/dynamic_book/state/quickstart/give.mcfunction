function struct_anim:dynamic_book/selection/get
data modify storage struct_anim:dynbook root.books[-1].pages set value []

data modify storage struct_anim:dynbook root.books[-1].title set value "Structures Animator: Quickstart"
data modify storage struct_anim:dynbook root.books[-1].description set value "Use me after you finish animation area selection"

function struct_anim:id/player/select_by_uuid
function struct_anim:animation/search/candidate_by_author

data modify storage struct_anim:dynbook root.books[-1].page_ctx.animation set from storage struct_anim:animation_candidates root.animations[-1].animation
data modify storage struct_anim:dynbook root.books[-1].page_ctx.player_id set from entity @s UUID

function struct_anim:dynamic_book/state/quickstart/_add_selectors with storage struct_anim:dynbook root.books[-1].page_ctx

data modify storage struct_anim:dynbook root.books[-1].parts.page set value []
function struct_anim:dynamic_book/state/quickstart/_make_page with storage struct_anim:dynbook root.books[-1].page_ctx
# function struct_anim:dynamic_book/state/quickstart/_make_page with storage struct_anim:animation_candidates root.animations[-1].controller

function struct_anim:dynamic_book/give
