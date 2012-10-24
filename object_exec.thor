# coding: utf-8

class ObjectBrain < Thor
  include Thor::Actions

  desc "step0", "3.1 社長命令・起立！"
  def step0
    run 'ruby step0/manager.rb'
  end

  desc "step1", "3.2 演習その１：社長命令・起立！"
  def step1
    run 'ruby step1/shacho.rb Tanto'
    run 'ruby step1/shacho.rb Shunin'
    run 'ruby step1/shacho.rb Bucho'
  end

  desc "step2", "3.3 演習その２：給料はいくら？"
  def step2
    run 'ruby step2/shacho.rb Tanto 100'
    run 'ruby step2/shacho.rb Shunin 100'
    run 'ruby step2/shacho.rb Bucho 100'
  end

  desc "composite2", "4.4.2 委譲"
  def composite2
    run 'ruby composite2/manager.rb'
  end

  desc "composite3", "4.5 Mr.デザインパターン：コンポジット(Composite) パターン"
  def composite3
    run 'ruby composite3/manager.rb'
  end

  desc "template2", "4.6 重複コードの天敵！テンプレートメソッド(Template Method)パターン"
  def template2
    run 'ruby template2/shacho.rb Tanto 牛尾 100'
    run 'ruby template2/shacho.rb Shunin 菅原 100'
    run 'ruby template2/shacho.rb Bucho Jackson 100'
  end
end
