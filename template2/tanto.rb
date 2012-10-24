# coding: utf-8

class Tanto < Shain
  def kiritsu
    puts "#{yakushoku}が普通に起立しました。"
  end

  def yakushoku
    "担当"
  end

  def kyuryo
    @kihonkyu
  end
end
