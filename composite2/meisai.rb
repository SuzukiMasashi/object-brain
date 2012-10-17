# coding: utf-8

class Meisai
  attr_reader :meisai_bango, :product_name, :price

  def initialize(meisai_bango, product_name, price)
    @meisai_bango = meisai_bango
    @product_name = product_name
    @price        = price
  end
end
