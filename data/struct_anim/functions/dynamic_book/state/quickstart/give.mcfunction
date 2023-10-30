function struct_anim:dynamic_book/selection/get
data modify storage struct_anim:dynbook root.books[-1].pages set value []

data modify storage struct_anim:dynbook root.books[-1].title set value "Structures Animator: Quickstart"
data modify storage struct_anim:dynbook root.books[-1].description set value "Use me after you finish animation area selection"

function struct_anim:id/player/get_name
function struct_anim:animation/search/candidate_by_author
function struct_anim:dynamic_book/state/quickstart/_make_page with storage struct_anim:animation_condidates root.animations[-1].controller

function struct_anim:dynamic_book/give
