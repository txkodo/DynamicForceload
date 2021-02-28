#> kd_forceload:core/static/remove/main
#
# 実行座標を静的unload
#
# @internal

execute store success storage kd_forceload:core _.byte byte 1 at @s run forceload query ~ ~
execute if data storage kd_forceload:core _{byte:1b} at @s run function kd_forceload:core/static/remove/append