# coding: utf-8

class Juchu
  attr_accessor :juchu_bango
  attr_accessor :chumon_sha

  def initialize(juchu_bango)
    @juchu_bango = juchu_bango
  end

  def add_meisai(meisai)
    (@meisais ||= []) << meisai
  end

  def get_meisais
    @meisais
  end

  def get_meisai_goukei
    @meisais.inject(0) {|r, meisai| r + meisai.price}
  end
end
