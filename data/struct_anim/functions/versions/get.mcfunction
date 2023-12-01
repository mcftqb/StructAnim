# versions.get
# returns result: (major: int, minor: int, patch: int)

execute store result storage struct_anim:utils root.return.versions.get.major int 1 run scoreboard players get #MAJOR_VERSION struct_anim.version
execute store result storage struct_anim:utils root.return.versions.get.minor int 1 run scoreboard players get #MINOR_VERSION struct_anim.version
execute store result storage struct_anim:utils root.return.versions.get.patch int 1 run scoreboard players get #PATCH_VERSION struct_anim.version