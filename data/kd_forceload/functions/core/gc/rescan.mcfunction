#> kd_forceload:core/gc/rescan
# 
# 読み込みチャンクを再走査するための準備
# 
# @internal

# スキャン済みチャンクをスキャン対象に戻す
execute if data storage kd_forceload:core chunks[{scanning:1b}].scanned[0] run data modify storage kd_forceload:core chunks[{scanning:1b}].unscanned set from storage kd_forceload:core chunks[{scanning:1b}].scanned
# スキャン済みチャンクを一時読み込みチャンクに(一時読み込みチャンクの最低2tickの読み込みを保証する)
data modify storage kd_forceload:core chunks[{scanning:1b}].scanned set from storage kd_forceload:core chunks[{scanning:1b}].temporary
# 一時読み込みチャンクをクリア
execute if data storage kd_forceload:core chunks[{scanning:1b}].temporary[0] run data modify storage kd_forceload:core chunks[{scanning:1b}].temporary set value []

# 走査するディメンションを変更
function kd_forceload:custom/dimensions/next