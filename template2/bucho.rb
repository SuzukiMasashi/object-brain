# coding: utf-8

class Bucho < Shain
  def kiritsu
    puts "#{yakushoku}がだるそうに立ちました。"
  end

  def yakushoku
    "部長"
  end

  def kyuryo
    @kihonkyu * 3
  end
end