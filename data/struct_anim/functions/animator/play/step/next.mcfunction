$execute store result score #VAR_SPEED struct_anim.int run data get storage struct_anim:animations animators[{id: "$(id)"}].speed
$execute store result score #VAR_FRAME struct_anim.int run data get storage struct_anim:animations animators[{id: "$(id)"}].frame

$function struct_anim:animation/search/animation_by_name with storage struct_anim:animations animators[{id: "$(id)"}]
function struct_anim:animation/frames/count
execute store result score #VAR_FRAMES_COUNT struct_anim.int run data get storage struct_anim:animations search.animation.frames_count

scoreboard players operation #VAR_FRAME struct_anim.int += #VAR_SPEED struct_anim.int
scoreboard players operation #VAR_FRAME struct_anim.int %= #VAR_FRAMES_COUNT struct_anim.int
execute unless score #VAR_FRAME struct_anim.int matches 0.. run scoreboard players operation #VAR_FRAME struct_anim.int += #VAR_FRAMES_COUNT struct_anim.int

$execute store result storage struct_anim:animations animators[{id: "$(id)"}].frame int 1 run scoreboard players get #VAR_FRAME struct_anim.int
$function struct_anim:animator/play/step/_place {id: "$(id)"}
