#> kd_forceload:core/gc/scan.in
# 
# ディメンションを合わせて実行
# 
# @internal

execute store success storage kd_forceload:core _.byte byte 1 positioned as @s if entity @e[tag=kd_forceload,dx=16,dz=16,y=-4096,dy=8192]
# forceloadの主がいる場合scannedに追加
execute if data storage kd_forceload:core _{byte:1b} run data modify storage kd_forceload:core chunks[{scanning:1b}].scanned append from storage kd_forceload:core chunks[{scanning:1b}].unscanned[-1]
# forceloadの主がいない場合unload
execute if data storage kd_forceload:core _{byte:0b} positioned as @s run forceload remove ~ ~

data remove storage kd_forceload:core chunks[{scanning:1b}].unscanned[-1]