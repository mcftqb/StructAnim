#define score_holder #IS_OPERATION_SUCCEESSFUL
#define score_holder #VAR_0
#define score_holder #VAR_1
#define score_holder #VAR_2
#define storage struct_anim:utils

# While {} can be used to access actual root, removal of such root is impossible
execute unless data storage struct_anim:utils root run data modify storage struct_anim:utils root set value {}

scoreboard objectives add struct_anim.int dummy
