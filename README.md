# DynamicForceload
動的forceloadを提供するデータパックライブラリ。
forceloadを上書きする形で用いる。
なお動的forceloadとは実行者がチャンクに居続ける限りforceloadを続け、実行者がいなくなると自動でunloadするものとする。

テレポ先の位置を読み込んでおくnbtのPosを変更した先を読み込んでおく等、エンティティに紐づいてforceloadしたい場合に有用。

ディメンション別で管理しているのためディメンションを追加している場合はdata/kd_forceload/function/custom/dimensions内のfunctionを書き換える必要がある。(下記参照)

### 基本コマンド

```/function kd_forceload:api/add```
単純な動的forceload

```/function kd_forceload:api/teleport```
teleprt先で動的forceload

```/function kd_forceload:api/set_position```
data modify entity [entity] Posした後に動的forceload

```/function kd_forceload:api/temporary```
実行位置を一時的にforceload(最短2tick)し解除する

```/function kd_forceload:api/add_static```
静的forceload(通常の/forceload addの代わりに使う)

```/function kd_forceload:api/temporary```
静的forceload解除(通常の/forceload removeの代わりに使う)

### ディメンションの追加
data/kd_forceload/function/custom/dimensions内のfunctionを書き換えることで管理対象のディメンションを追加できる。
詳細は各ファンクションの中を確認すること。
