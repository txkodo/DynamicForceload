#> kd_forceload:core/add/main-temporary
# 
# 実行座標を一時読み込みチャンクリストに追加。1tick以上後に自動でunloadされる
# 
# @internal

execute store success storage kd_forceload:core _.byte byte 1 run forceload add ~ ~
execute if data storage kd_forceload:core _{byte:1b} run function kd_forceload:core/add/add-temporary