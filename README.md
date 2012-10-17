object-brain
======

オブジェクト脳のつくり方

### 実行タスクを確認
* 実行方法：`thor -T`

* 実行結果
```
object_exec
-----------
thor object_exec:step0  # 3.1 社長命令・起立！
thor object_exec:step1  # 3.2 演習その１：社長命令・起立！
thor object_exec:step2  # 3.3 演習その２：給料はいくら？
```

### タスクの実行
* 実行方法：`thor object_exec:step0` （ex. 3.1 社長命令・起立！のスクリプトを実行する場合）

* 実行結果
```
         run  ruby step0/manager.rb from "."
食べてます。
寝ています。
```