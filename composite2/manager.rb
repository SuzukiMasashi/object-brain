# coding: utf-8
require_relative "juchu"
require_relative "meisai"
require_relative "chumonsha"

class Manager
  class << self
    def main
      juchu = Juchu.new(1)
      chumonsha = Chumonsha.new("牛尾 剛", "大阪市 箕面市")
      meisai1 = Meisai.new(1, "Thriller", 2000)
      meisai2 = Meisai.new(2, "Dangerous", 2000)

      juchu.chumon_sha = chumonsha
      juchu.add_meisai(meisai1)
      juchu.add_meisai(meisai2)

      person = juchu.chumon_sha
      meisais = juchu.get_meisais

      meisai_format = ->(meisai) do
        [:meisai_bango, :product_name, :price].map {|m| meisai.send(m)}.join("\t\t") << "円"
      end

      puts <<EOS
　　　＊＊＊＊＊　受注伝票　＊＊＊＊＊　　　　
　受注番号：#{juchu.juchu_bango}
　　注文者：#{person.name}
注文者住所：#{person.address}
受注明細番号\t注文商品\t\t価格
#{meisais.map(&meisai_format).join("\n")}
#{'-' * 46}
合計金額\t\t\t\t#{juchu.get_meisai_goukei}円
EOS
    end
  end
end

Manager.main
