#> kd_forceload:custom/dimensions/scan
# 
# 走査するディメンションを変える
# 
# @internal

execute if data storage kd_forceload:core chunks[{dimension:"minecraft:overworld",scanning:1b}] in minecraft:overworld run function kd_forceload:core/gc/scan.in
execute if data storage kd_forceload:core chunks[{dimension:"minecraft:the_nether",scanning:1b}] in minecraft:the_nether run function kd_forceload:core/gc/scan.in
execute if data storage kd_forceload:core chunks[{dimension:"minecraft:the_end",scanning:1b}] in minecraft:the_end run function kd_forceload:core/gc/scan.in
# ここに追記 #