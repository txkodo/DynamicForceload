#> kd_forceload:core/add/main
#
# 実行座標をforceload。成功したらチャンクリストに追加
#
# @internal

execute store success storage kd_forceload:core _.byte byte 1 at @s run forceload add ~ ~
execute if data storage kd_forceload:core _{byte:1b} at @s run function kd_forceload:core/add/add

# タグの付与
tag @s add kd_forceload