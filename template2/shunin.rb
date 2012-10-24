# coding: utf-8

class Shunin < Shain
  def kiritsu
    puts "#{yakushoku}がすばやく立ちました。"
  end

  def yakushoku
    "主任"
  end

  def kyuryo
    @kihonkyu * 2 + 1
  end
end
