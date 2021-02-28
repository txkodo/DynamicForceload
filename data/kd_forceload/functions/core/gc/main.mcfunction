#> kd_forceload:core/gc/main
#
# チャンクリストにあるチャンク読み込みが必要かスキャンする。
# 
# 負荷軽減のため実行は1チャンク/tick
#
# @internal

# スキャン対象の先頭をスキャン(読み込み外チャンクに行っても問題ないように実行者を設定)
execute if data storage kd_forceload:core chunks[{scanning:1b}].unscanned[0] as fa0ea51d-6966-48e3-ad92-0940987bc39e run function kd_forceload:core/gc/scan
# スキャン終了時スキャン済みチャンクをスキャン対象に戻す
execute unless data storage kd_forceload:core chunks[{scanning:1b}].unscanned[0] run function kd_forceload:core/gc/rescan