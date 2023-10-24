# animator_next_frame uses args (id: str)
data modify storage struct_anim:utils root.args.get_animator.id set from storage struct_anim:utils root.args.animator_next_frame.id
function struct_anim:animator/get
function struct_anim:animation/search/animation_by_selection

execute store result score #VAR_DIRECTION_REVERSED struct_anim.int run data get storage struct_anim:animations root.animators[-1].reversed

execute unless score #VAR_DIRECTION_REVERSED struct_anim.int matches 1 store result score #VAR_STEP struct_anim.int run data get storage struct_anim:animations root.animators[-1].step 1
execute if score #VAR_DIRECTION_REVERSED struct_anim.int matches 1 store result score #VAR_STEP struct_anim.int run data get storage struct_anim:animations root.animators[-1].step -1

execute store result score #VAR_FRAME struct_anim.int run data get storage struct_anim:animations root.animators[-1].frame

execute store result score #VAR_FRAMES_COUNT struct_anim.int run data get storage struct_anim:animations root.animations[-1].frames_count

scoreboard players operation #VAR_FRAME struct_anim.int += #VAR_STEP struct_anim.int
scoreboard players operation #VAR_FRAME struct_anim.int %= #VAR_FRAMES_COUNT struct_anim.int
execute unless score #VAR_FRAME struct_anim.int matches 0.. run scoreboard players operation #VAR_FRAME struct_anim.int += #VAR_FRAMES_COUNT struct_anim.int

execute store result storage struct_anim:animations root.animators[-1].frame int 1 run scoreboard players get #VAR_FRAME struct_anim.int

function struct_anim:animator/play/step/_update_frame with storage struct_anim:animations root.animators[-1]
function struct_anim:animation/frames/place
